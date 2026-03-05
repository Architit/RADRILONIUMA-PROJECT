# LRPT Quarantine Deep Scan — Wave 1

report_id: RPT-2026-03-03-LRPT-QUARANTINE-DEEP-SCAN-W1
created_utc: 2026-03-03T11:00:00Z
scope: RADRILONIUMA-PROJECT quarantine payload `Archive/Quarantine/LRPT_NON_DEVKIT_20260303T090515Z`
status: COMPLETE (analysis), FOLLOWUP_REQUIRED (restoration decisions)

## Summary
Deep scan completed for quarantined LRPT non-DevKit payload.
Generated deterministic restore-map with action class per file.

## Counts
- scanned_files: 40
- keep_quarantine_duplicate: 15
- review_merge_required: 1
- review_restore_required: 24

## Key Findings
1. Most governance/protocol artifacts are exact duplicates already present in canonical surfaces (`gov/`, `protocol/`, `policy/`, `contract/`, `map/`).
2. A small subset has same-name but content drift and requires merge decision.
3. `healing_tools/*` and `patches/*` are unique in this repository and need explicit semantic placement decision before any restore.

## Generated Artifacts
- restore-map: `gov/report/diagnostics/2026-03-03__RADRILONIUMA-PROJECT__LRPT_QUARANTINE_RESTORE_MAP_WAVE1.tsv`

## Decision Gate (Captain confirmation required)
- No auto-restore performed.
- Next step is targeted restoration wave from restore-map rows marked:
  - `REVIEW_MERGE_REQUIRED`
  - `REVIEW_RESTORE_REQUIRED`

## Safety
All quarantined data remains untouched and reversible.
