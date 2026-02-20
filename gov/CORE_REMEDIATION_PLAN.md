# CORE Remediation Plan

## Scope
- Target repository: `repos/windows-migrated-b-core/CORE`
- Status: `BLOCKED`
- Reason: git object integrity defects (`invalid object`, tree build failure) prevent deterministic governance commits.

## Phase 1 — Evidence Capture (non-destructive)
1. Run `git fsck --full` in the blocked repository.
2. Save command output as immutable evidence in SoT ASR.
3. Record current branch/ref state and remote URL.

## Phase 2 — Clean Reclone Reseed (non-destructive to source clone)
1. Clone canonical remote into a new clean path.
2. Verify object integrity in new clone with `git fsck --full`.
3. Confirm default branch tracking and remote sync.

## Phase 3 — Governance Artifact Reseed
1. Recreate/seed governance files in strict order:
   - `DEV_LOGS.md`
   - `ROADMAP.md`
   - `INTERACTION_PROTOCOL.md`
   - `WORKFLOW_SNAPSHOT_STATE.md`
2. Apply protocol sync header (`v1.0.0`, `last_sync_commit: 7eadfe9`).
3. Commit and push governance baseline.

## Phase 4 — Drift Gate Re-entry
1. Re-run Protocol Drift Gate matrix for this repository.
2. Require gate status `ALIGNED` before removing `BLOCKED`.
3. Update SoT risk register and ASR index with closure evidence.
