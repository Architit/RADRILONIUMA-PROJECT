# GATEWAY IO ROUTING CONTRACT V1

contract_type: gateway_io_routing_contract
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T05:20:00Z

## Purpose
- Define deterministic and safe routing boundaries for `scripts/gateway_io.sh`.
- Keep Phase 8.2 in verification mode only (no import/export execution).

## Endpoints
- GitHub remote: `GATEWAY_GITHUB_REMOTE` (default `origin`)
- OneDrive bridge root: `GATEWAY_ONEDRIVE_ROOT` (directory path)
- Google workspace root: `GATEWAY_GWORKSPACE_ROOT` (directory path)

## Routing Boundaries
- Incoming task slots: `LRPT/TSPT/incoming/{J.A.R.V.I.S,LAM-Codex_Agent,Operator_Agent}`
- Outbound patch slots: `LRPT/TSPT/outbound/{J.A.R.V.I.S,LAM-Codex_Agent,Operator_Agent}`
- Gateway staging/internal paths: `.gateway/import`, `.gateway/import_staging`, `.gateway/export`

## Allowed Operations (Phase 8.2 Bootstrap)
- `bash scripts/gateway_io.sh verify`

## Prohibited In This Phase
- `export` and `import` execution
- Any direct runtime activation or daemonization
- Any mutation outside repository-scoped gateway directories

## File Policy
- Contract/task artifacts: `*.md`, `*.yaml`, `*.yml`, `*.patch`
- Excluded from gateway package baseline: `.git`, `.venv`, `__pycache__`

## Safety Controls
- Verification must remain non-destructive.
- Missing OneDrive/Google path bindings are warning-level in verify mode.
- GitHub remote resolution failure is blocking for verify status.
