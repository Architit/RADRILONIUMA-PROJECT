# SUBTREE + ATPLT DEBUG COMPLIANCE REPORT V2

timestamp_utc: 2026-02-16T07:11:10Z
status: COMPLETE
scope: compliance scan for M36 + M37
mode: contracts-first, observability-first, derivation-only

## Coverage
- module scope:
  - `M36` (subtree stack v2)
  - `M37` (ATPLT debug/devkit protocol v2)
- evidence surfaces:
  - `INTERACTION_PROTOCOL.md`
  - `GOV_STATUS.md`
  - `CONTRACT_ATLAS.md`
  - `TASK_MAP.md`
  - `SUBTREES_LOCK.md`
  - `devkit/shell_preflight_check.py`

## Checks
1) Module binding presence
- result: PASS
- evidence: `M36` and `M37` blocks exist in `INTERACTION_PROTOCOL.md`.

2) Governance state pointers
- result: PASS
- evidence: `m36_state=ACTIVE`, `m37_state=ACTIVE`, latest ASR pointers aligned in `GOV_STATUS.md`.

3) Contract atlas synchronization
- result: PASS
- evidence: subtree/debug artifacts indexed and mapped in `CONTRACT_ATLAS.md`.

4) Task lifecycle sync
- result: PASS
- evidence: `t52: DONE` present in `TASK_MAP.md`.

5) Preflight rule: PowerShell variable+colon parser risk
- result: PASS
- evidence:
  - command `icacls $target /grant "$me:(OI)(CI)(RX)" /T /C` -> blocked with `PF_PWSH_VAR_COLON_BRACES_REQUIRED`
  - command `icacls $target /grant "${me}:(OI)(CI)(RX)" /T /C` -> safe.

6) Preflight rule: backtick substitution risk (bash)
- result: PASS
- evidence: literal command with backticks is blocked by `PF_BACKTICK_SUBSTITUTION_RISK`.

7) Subtree lock freshness
- result: YELLOW
- evidence: `SUBTREES_LOCK.md` generated timestamp is older than latest subtree/debug rework wave.
- impact: potential stale lock snapshot versus current governance wave state.
- remediation: regenerate lock map in next subtree compliance wave.

8) Preflight invocation integrity
- result: YELLOW
- evidence: if caller shell expands command before checker, preflight can receive already-mutated payload.
- classification: `TV_PREFLIGHT_INVOCATION_QUOTING_RISK`.
- remediation: use `--file` mode for complex commands or strict single-quoted `--command`.

## Overall Decision
- compliance_state: PASS_WITH_REMEDIATION
- blocking_state: NOT_BLOCKING
- next_action_required:
  - refresh `SUBTREES_LOCK.md`
  - run one dedicated preflight-invocation integrity wave (`--file` baseline)
