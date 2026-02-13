# OS DEV MAP

timestamp_utc: 2026-02-13T11:42:20Z
scope: local device execution substrate
mode: atplt md (autopilot mode)

## Substrate
- host: Windows + WSL2
- linux root: `/`
- windows drives mounted:
  - `C:\\ -> /mnt/c`
  - `A:\\ -> /mnt/a`
  - `B:\\ -> /mnt/b`

## Dev Zones
- SoT zone: `/home/architit/work/RADRILONIUMA-PROJECT`
- ecosystem repos zone: `/home/architit/work/*`
- migrated-risk zone: `/home/architit/repos/windows-migrated-b-core/CORE` (non-canonical)

## Operational Rules
- contracts-first
- observability-first
- derivation-only
- no runtime logic changes by governance map updates

## ATPLT MD Control
- atplt_md_state: ACTIVE
- activation_scope: Phase 7.0 governance execution
- deactivation_condition: `phase70_status = COMPLETE`
- status_source: `GOV_STATUS.md`
