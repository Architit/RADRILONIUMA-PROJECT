# SUBTREE WAVE1 TARGET APPLY RUNBOOK V1

## Purpose
Deterministic manual procedure for applying wave-1 preflight remediation to target repositories.

## Targets
- LAM_DATA_Src
- System-

## Steps per Target
1. Ensure clean working tree in target repo.
2. Copy/commit preflight kit files defined in `LRPT/kit/SUBTREE_PREFLIGHT_KIT_V1.yaml`.
3. Run preflight checks in target repo for approved baseline commands.
4. Verify `ROADMAP.md` and `DEV_LOGS.md` presence and sync pointers.
5. Record result in wave-1 target evidence report.

## Exit Criteria
- Preflight: PASS
- Governance integrity: PASS
- Evidence report updated with timestamps and commit refs
