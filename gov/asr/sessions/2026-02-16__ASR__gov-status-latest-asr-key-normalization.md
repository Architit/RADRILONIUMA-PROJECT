# ASR — GOV_STATUS latest_asr Key Normalization

timestamp_utc: 2026-02-16T01:00:27Z
scope: normalize section-scoped latest_asr keys for machine parsing
source_of_truth: RADRILONIUMA-PROJECT
protocol_version: v1.0.0

## Objective
- Remove ambiguous duplicate key name `latest_asr` inside nested sections.
- Keep top-level `latest_asr` as global dashboard pointer.

## Changes
- Subtree section:
  - `latest_asr` -> `subtree_latest_asr`
- Device Users section:
  - `latest_asr` -> `device_users_latest_asr`

## Result
- key_ambiguity_state: RESOLVED
- parsing_state: IMPROVED
- dashboard_semantics: PRESERVED
