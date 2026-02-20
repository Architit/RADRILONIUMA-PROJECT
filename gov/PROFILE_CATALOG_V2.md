# PROFILE CATALOG V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T08:52:10Z
scope: ecosystem profile inventory and ownership map

## Profile Inventory
| profile_id | profile_class | profile_surface | owner_module | lifecycle_state | gate | status |
|---|---|---|---|---|---|---|
| PRF-ID-ACCESS | IDENTITY_PROFILE | `INTERNAL_KEY_IDENTITY_RUNTIME_MAPPING_CONTRACT.md` | M25/M35 | ACTIVE | PGATE_BOUNDARY | ACTIVE |
| PRF-OPS-WORKFLOW | OPERATIONAL_PROFILE | `TASK_MAP.md` + `ROADMAP.md` | M22/M23 | ACTIVE | PGATE_TRANSITION | ACTIVE |
| PRF-RUNTIME-ENV | RUNTIME_PROFILE | `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md` | M39 | ACTIVE | PGATE_COMPATIBILITY | ACTIVE |
| PRF-INTERFACE-COMPAT | INTERFACE_PROFILE | `INTERFACE_LIFECYCLE_PROTOCOL_V2.md` | M40 | ACTIVE | PGATE_COMPATIBILITY | ACTIVE |
| PRF-LOGIC-CONSISTENCY | OPERATIONAL_PROFILE | `LOGIC_LIFECYCLE_PROTOCOL_V2.md` | M41 | ACTIVE | PGATE_TRANSITION | ACTIVE |
| PRF-RECOVERY-DEADLOOP | RECOVERY_PROFILE | `ECOSYSTEM_ANTI_SAMSARA_DEADLOOP_PROTOCOL.md` | M21 | ACTIVE | PGATE_TRANSITION | ACTIVE |
| PRF-ASR-TRACE | OPERATIONAL_PROFILE | `gov/asr/sessions/*` + `gov/asr/INDEX.md` | M3 archive | ACTIVE | PGATE_SYNC | ACTIVE |

## Catalog Rules
- Every ecosystem profile must be declared before activation.
- Breaking profile changes require governance gate decision + ASR.
- Undeclared profile transition is blocking.
