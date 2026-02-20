# KIT CATALOG V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T07:24:10Z
scope: ecosystem kit inventory and ownership map

## Kit Inventory
| kit_id | kit_path | purpose | owner_role | dependency_class | lifecycle_state |
|---|---|---|---|---|---|
| KIT-MAP | `/map` | map surfaces and topology pointers | map_maintainer | KDEP_CORE | ACTIVE |
| KIT-JOURNAL | `/journal` | operational journaling and checkpoints | governance_operator | KDEP_CORE | ACTIVE |
| KIT-ATLAS | `/atlas` | research and contract atlas surfaces | contract_maintainer | KDEP_CORE | ACTIVE |
| KIT-CHRONOLOG | `/chronolog` | chronology and temporal evidence surfaces | evidence_maintainer | KDEP_SUPPORT | ACTIVE |
| KIT-LOG | `/log` | execution/event log surfaces | governance_operator | KDEP_CORE | ACTIVE |
| KIT-PROTOCOL | `/protocol` | protocol artifacts and gate semantics | protocol_maintainer | KDEP_CORE | ACTIVE |
| KIT-CONTRACT | `/contract` | contract artifacts and schema surfaces | contract_maintainer | KDEP_CORE | ACTIVE |
| KIT-MODE | `/mode` | runtime mode declarations and transitions | governance_operator | KDEP_SUPPORT | ACTIVE |
| KIT-CORE | `/core` | core ecosystem state/control pointers | core_maintainer | KDEP_CRITICAL | ACTIVE |
| KIT-FLOW | `/flow` | flow orchestration and circulation controls | flow_maintainer | KDEP_SUPPORT | ACTIVE |
| KIT-MODULE | `/module` | module topology and interfaces | module_architect | KDEP_CORE | ACTIVE |
| KIT-TREE | `/tree` | tree/subtree topology and lock surfaces | subtree_maintainer | KDEP_CRITICAL | ACTIVE |
| KIT-ARCH | `/architecture` | architecture-level specifications | system_architect | KDEP_CORE | ACTIVE |
| KIT-STRUCT | `/structure` | structural decomposition and boundaries | system_architect | KDEP_SUPPORT | ACTIVE |
| KIT-SYSTEM | `/system` | system-state surfaces and contracts | system_maintainer | KDEP_CRITICAL | ACTIVE |
| KIT-ECOSYSTEM | `/ecosystem` | ecosystem-wide policies and stacks | governance_operator | KDEP_CRITICAL | ACTIVE |
| KIT-SPACE | `/space` | environment/context workspace pointers | ops_maintainer | KDEP_SUPPORT | ACTIVE |
| KIT-MATRIX | `/matrix` | decision/gate matrices | governance_operator | KDEP_CORE | ACTIVE |
| KIT-CODE | `/code` | code-oriented generation/adaptation surfaces | coding_operator | KDEP_SUPPORT | ACTIVE |
| KIT-GENESIS | `/GENESIS` | origin baseline and bootstrap surfaces | governance_operator | KDEP_CRITICAL | ACTIVE |

## Dependency Classes
- `KDEP_CRITICAL`: break blocks release and governance transitions.
- `KDEP_CORE`: required for normal governance cycle.
- `KDEP_SUPPORT`: support layer; degraded mode allowed with explicit decision.

## Rules
- Every new kit requires owner role and dependency class.
- Critical kit changes require ASR and rollback pointer.
- Kit removals are prohibited without replacement mapping.
