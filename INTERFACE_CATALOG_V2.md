# INTERFACE CATALOG V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T08:18:10Z
scope: ecosystem interface inventory and ownership map

## Interface Inventory
| interface_id | interface_class | interface_surface | owner_module | lifecycle_state | compatibility_mode | gate | status |
|---|---|---|---|---|---|---|---|
| IF-GOV-ROOT | GOVERNANCE_INTERFACE | `INTERACTION_PROTOCOL.md` | M0/M5 core governance | ACTIVE | COMPAT_STRICT | IGATE_BOUNDARY | ACTIVE |
| IF-OPR-MAP | OPERATOR_UI_INTERFACE | `OS_DEV_MAP.md` + `ROADMAP_MAP.md` + `TASK_MAP.md` | M22/M23 | ACTIVE | COMPAT_TOLERANT_WITH_GOV_DECISION | IGATE_SYNC | ACTIVE |
| IF-AGENT-TASKSPEC | AGENT_AUTOMATION_INTERFACE | `TASK_SPEC.md` + `devkit/task_spec_template.yaml` | M31/M32 | ACTIVE | COMPAT_STRICT | IGATE_COMPATIBILITY | ACTIVE |
| IF-TOOL-PREFLIGHT | SYSTEM_TOOLING_INTERFACE | `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md` + `devkit/shell_preflight_check.py` | M33/M34 | ACTIVE | COMPAT_BLOCK_ON_BREAKING | IGATE_TRANSITION | ACTIVE |
| IF-ENV-RUNTIME | SYSTEM_TOOLING_INTERFACE | `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md` | M39 | ACTIVE | COMPAT_BLOCK_ON_BREAKING | IGATE_TRANSITION | ACTIVE |
| IF-ARCHIVE-ASR | DATA_ARCHIVE_INTERFACE | `gov/asr/sessions/*` + `gov/asr/INDEX.md` | M3 archive | ACTIVE | COMPAT_STRICT | IGATE_SYNC | ACTIVE |
| IF-WORKFLOW-SNAPSHOT | DATA_ARCHIVE_INTERFACE | `WORKFLOW_SNAPSHOT_STATE.md` | M22 observability | ACTIVE | COMPAT_STRICT | IGATE_SYNC | ACTIVE |

## Catalog Rules
- Every new ecosystem-facing interface must be added before activation.
- Any breaking interface update requires explicit gate decision + ASR.
- Interface deactivation requires replacement path declaration.
