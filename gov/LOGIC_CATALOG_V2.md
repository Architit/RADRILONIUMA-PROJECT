# LOGIC CATALOG V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T08:38:10Z
scope: ecosystem logic inventory and ownership mapping

## Logic Inventory
| logic_id | logic_class | logic_surface | owner_module | lifecycle_state | gate | status |
|---|---|---|---|---|---|---|
| LGC-AXIOM-GOV | AXIOM_LOGIC | `INTERACTION_PROTOCOL.md` invariants | M0/M5 core governance | ACTIVE | LGATE_BOUNDARY | ACTIVE |
| LGC-DECISION-GATE | DECISION_LOGIC | `GOVERNANCE_DECISION_PROTOCOL_V2.md` | M35 | ACTIVE | LGATE_CONSISTENCY | ACTIVE |
| LGC-VALIDATION-PREFLIGHT | VALIDATION_LOGIC | `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md` | M34 | ACTIVE | LGATE_CONSISTENCY | ACTIVE |
| LGC-STATE-SNAPSHOT | STATE_LOGIC | `WORKFLOW_SNAPSHOT_STATE.md` | M22 observability | ACTIVE | LGATE_TRANSITION | ACTIVE |
| LGC-RECOVERY-DEADLOOP | RECOVERY_LOGIC | `ECOSYSTEM_ANTI_SAMSARA_DEADLOOP_PROTOCOL.md` | M21 | ACTIVE | LGATE_TRANSITION | ACTIVE |
| LGC-ENV-RETRY | RECOVERY_LOGIC | `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md` | M39 | ACTIVE | LGATE_TRANSITION | ACTIVE |
| LGC-INTERFACE-COMPAT | VALIDATION_LOGIC | `INTERFACE_LIFECYCLE_PROTOCOL_V2.md` | M40 | ACTIVE | LGATE_SYNC | ACTIVE |
| LGC-ASR-EVIDENCE | STATE_LOGIC | `gov/asr/sessions/*` + `gov/asr/INDEX.md` | M3 archive | ACTIVE | LGATE_SYNC | ACTIVE |

## Catalog Rules
- New logical behavior must be declared before activation.
- Breaking logic transitions require gate decision + ASR evidence.
- Undeclared logic path is a blocking violation.
