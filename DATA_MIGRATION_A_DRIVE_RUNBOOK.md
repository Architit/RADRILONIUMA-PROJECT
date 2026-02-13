# DATA MIGRATION A: DRIVE RUNBOOK

mode: lifeflowstream
security_model: zero trust
scope: local internal systems

## Goal
- Migrate personal identification/authentication/verification data to `A:` (`/mnt/a`) in controlled way.
- Preserve integrity, traceability, and rollback capability.

## Preconditions
- Data owner approval and legal basis documented.
- Destination path exists on `A:` and has restricted ACL.
- Source inventory completed (datasets + owners + sensitivity class).

## Steps
1. Freeze writes to source datasets (maintenance window).
2. Create immutable inventory manifest:
- dataset_id, source_path, owner, sensitivity, size, hash_before.
3. Encrypt at rest before/at copy (volume or file-level encryption).
4. Copy to `A:` using resumable copy with hash verification.
5. Compute hash_after and compare with hash_before.
6. Re-point local services to new `A:` path via config update.
7. Keep source read-only quarantine for rollback window.
8. Close window when verification matrix is GREEN.

## Verification
- Hash parity: 100% required.
- Access checks: least privilege on destination.
- Service checks: authentication/verification flows stable.

## Rollback
- If any dataset mismatch: revert service pointers to source.
- Keep event log and incident ticket references.

## Outputs
- migration_manifest.json
- verification_report.md
- rollback_report.md (if used)
