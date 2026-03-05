# Quarantine Restore Queue — Wave 2

report_id: RPT-2026-03-03-QUARANTINE-RESTORE-QUEUE-W2
created_utc: 2026-03-03T13:20:00Z
scope: sequential queue restore for REVIEW_RESTORE_REQUIRED rows
status: COMPLETE

## Execution Mode
- Sequential one-by-one file handling in a single run (no pause between files).
- Strategy: copy from quarantine, preserve source.

## Summary
- restore_candidates: 24
- restored_by_copy: 21
- skipped_already_matched: 3
- skipped_source_missing: 0
- errors: 0

## Log
- `gov/report/diagnostics/2026-03-03__RADRILONIUMA-PROJECT__QUARANTINE_RESTORE_QUEUE_WAVE2_LOG.tsv`

## Notes
- This wave applied only restore-required rows.
- Merge-required and duplicate-only rows were not mutated in this wave.
