# ASR — Phase 6.B Version Pre-Gate Reset Contract Activation

timestamp_utc: 2026-02-13T10:12:25Z
scope: ecosystem version-transition governance
source_of_truth: RADRILONIUMA-PROJECT

## Trigger
- request: before every new version gate enforce full revision + map/log/chronolog reset + encrypted archive + compliance gate.

## Actions
- Published canonical contract: `VERSION_GATE_RESET_PROTOCOL.md`.
- Bound contract into `INTERACTION_PROTOCOL.md` as module `M8`.
- Updated governance pointers:
  - `ROADMAP.md`
  - `DEV_LOGS.md`
  - `GOV_STATUS.md`
  - `WORKFLOW_SNAPSHOT_STATE.md`
  - `gov/asr/INDEX.md`

## Mandatory Pre-Gate Requirements
- full ecosystem revision
- reset-pack for maps/logs/chronologs
- encrypted archive in previous space + integrity manifest
- internal compliance gate (`COMPLIANT`) before next subphase

## Result
- version-transition pre-gate rule: ACTIVE
- runtime impact: NONE (policy-only)
