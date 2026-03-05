# ASR Session — LRPT Quarantine Deep Scan Wave 1

session_id: ASR-2026-03-03-LRPT-QUARANTINE-DEEP-SCAN-W1
created_utc: 2026-03-03T11:00:00Z
status: COMPLETE
scope: analysis-only (no restore mutations)

## Done
1. Scanned quarantine payload file-by-file.
2. Compared file hashes against active repository surfaces.
3. Classified each artifact with action recommendation.
4. Produced restore-map TSV for controlled restoration planning.

## Output
- report: `gov/report/diagnostics/2026-03-03__RADRILONIUMA-PROJECT__LRPT_QUARANTINE_DEEP_SCAN_WAVE1.md`
- restore_map: `gov/report/diagnostics/2026-03-03__RADRILONIUMA-PROJECT__LRPT_QUARANTINE_RESTORE_MAP_WAVE1.tsv`

## Next
- Captain review of `REVIEW_*` rows.
- Targeted restore wave with verification checkpoints.
