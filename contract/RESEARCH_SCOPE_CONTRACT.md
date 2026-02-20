# RESEARCH SCOPE CONTRACT

contract_type: contracts-first research governance
status: DRAFT
mode: derivation-only, observability-first
updated_utc: 2026-02-16T02:29:04Z

## Objective
Build a reproducible scan-to-strategy baseline for:
- contracts
- dependencies
- protocols
- modes
- modules
across local GitHub-cloned repositories with submodule and subtree topology awareness.

## In Scope
- Local git repositories under `/home/architit/work`.
- Read-only topology and contract-surface discovery.
- Submodule lock extraction from `.gitmodules` + pinned status.
- Subtree hint extraction from git history (`subtree|git-subtree` markers).

## Out of Scope (for this phase)
- Remote network fetch/verification beyond local clone state.
- Runtime execution-path changes.
- Destructive repo operations.
- Security key rotation/content decryption.

## Invariants
- Facts must map to evidence artifacts: commit hash, path, timestamp.
- No inferred ownership or semantics without direct evidence.
- All outputs are policy/contracts artifacts only.

## Evidence Gap Register
- `SSNRCRDLG_DPRSRCHERRPLNSTRTGRQST.txt` not found in local filesystem during this run.
- vNext kernel target definition remains `TBD` pending explicit repo/path and compatibility criteria.
