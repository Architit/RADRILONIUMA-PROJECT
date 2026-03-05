# Report Routing Policy

version: v1.0.0
last_updated_utc: 2026-03-03T10:00:00Z

## Canonical Report Surfaces
- `gov/report/diagnostics/`: technical diagnostics, revisions, drift scans, remediation reports.
- `gov/report/incidents/`: incident postmortems, block/failure timelines, containment+recovery evidence.
- `gov/report/semantic_index/`: indexes, routing rules, semantic tags and report catalog.

## Naming Convention
- `YYYY-MM-DD__<SCOPE>__<SHORT_TITLE>.md`

## Mandatory Metadata (report header)
- `report_id`
- `created_utc`
- `scope`
- `status`
- `tags`
- `related_artifacts`
