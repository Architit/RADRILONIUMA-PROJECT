# ASR — ESS Audit: SSN RSTRT Protocol Presence & Drift

## Context
- Date: 2026-02-12
- Scope (local): 
  - /home/architit/work/RADRILONIUMA-PROJECT
  - /home/architit/work/LAM
  - /home/architit/work/Roaudter-agent
- Mode: observability-only / policy-only / derivation-only
- Execution: NOT performed (read-only scan + synthesis)

## Canonical reference (SoT)
Source artifacts in RADRILONIUMA-PROJECT:
- INTERACTION_PROTOCOL.md defines deterministic restart semantics:
  - New chat: `ssn rstrt` => Phase 2 (IMPORT) only.
- WORKFLOW_SNAPSHOT_CONTRACT.md defines two-phase `ssn rstrt`:
  - EXPORT refreshes WORKFLOW_SNAPSHOT_STATE.md with declared workflow facts and governance alignment.
  - IMPORT reads WORKFLOW_SNAPSHOT_STATE.md and performs read-only context sync (e.g., pwd, git status -sb, recent git log), then resumes declared phase.
- cld rstrt includes SS-level facts-only environment capture/verification via:
  - SYSTEM_STATE_CONTRACT.md / SYSTEM_STATE.md

## Per-repository artifact presence (ESS scan)

| Repository | INTERACTION_PROTOCOL.md | WORKFLOW_SNAPSHOT_* | SYSTEM_STATE_* | Notes | Drift |
|---|---|---|---|---|---|
| RADRILONIUMA-PROJECT | Present | Present | Present | Canonical SoT for restart semantics and artifacts | None (canonical) |
| LAM | Present (restart signals section) | Absent | Absent | Has cold restart doc (docs/protocols/Cold_Restart_Workflow_Recovery_v1.md) but no SS-layer or workflow snapshot artifacts | Partial adoption / missing required artifacts |
| Roaudter-agent | Absent | Absent | Absent | No restart protocol or artifacts detected | Absent |

## Semantic drift classification
- RADRILONIUMA-PROJECT: Canonical, complete.
- LAM: Partial drift / governance-artifact gap.
  High-level semantics appear aligned, but required artifacts are missing:
  - WORKFLOW_SNAPSHOT_CONTRACT.md
  - WORKFLOW_SNAPSHOT_STATE.md
  - SYSTEM_STATE_CONTRACT.md
  - SYSTEM_STATE.md
  The cold-restart doc does not reference SS-layer or snapshot split architecture as a mandatory adoption requirement.
- Roaudter-agent: Absent. No protocol or artifacts found.

## Synthesis summary
- Canonical `ssn rstrt` protocol and governance artifacts exist only in DevKit (RADRILONIUMA-PROJECT).
- LAM: protocol-aligned at a high level, but missing all required snapshot artifacts (artifact gap, not only documentation drift).
- Roaudter-agent: no presence of `ssn rstrt` protocol or artifacts.

## Recommended next steps (policy-only)
1) Define adoption DoD for downstream repos (LAM, Roaudter-agent) as ESS-ready:
   - minimum required artifacts and their placement
   - mapping SoT vs DERIVED (no duplication that breaks authority)
2) Plan rollout wave (tagging + adoption PRs), without execution until governance decision.
