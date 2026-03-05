# ASR Session — Quarantine Restore Queue Wave 2

session_id: ASR-2026-03-03-QUARANTINE-RESTORE-QUEUE-W2
created_utc: 2026-03-03T13:20:00Z
status: COMPLETE
scope: queue restoration from LRPT quarantine

## Done
- Executed sequential one-by-one restore queue in one run.
- Applied copy-based restoration for restore-required rows.
- Preserved quarantine originals.

## Metrics
- restored_by_copy: 21
- skipped_already_matched: 3
- skipped_source_missing: 0
- errors: 0

## Evidence
- report: `gov/report/diagnostics/2026-03-03__RADRILONIUMA-PROJECT__QUARANTINE_RESTORE_QUEUE_WAVE2.md`
- log: `gov/report/diagnostics/2026-03-03__RADRILONIUMA-PROJECT__QUARANTINE_RESTORE_QUEUE_WAVE2_LOG.tsv`
