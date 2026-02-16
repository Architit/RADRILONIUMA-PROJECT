# SUBTREE GATE MATRIX V2

matrix_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: subtree operation gates and transition controls

## Gate Classes
| gate_id | gate_name | purpose | allow_condition | block_condition |
|---|---|---|---|---|
| SGATE-1 | TOPOLOGY_SCOPE_GATE | validate subtree scope and domain mapping | scope/domain contract aligned | undefined scope/domain drift |
| SGATE-2 | DECISION_TUPLE_GATE | enforce explicit binary decision | full decision tuple present | missing decision tuple field |
| SGATE-3 | LOCK_INTEGRITY_GATE | protect `SUBTREES_LOCK.md` integrity | lock delta + evidence present | lock changed without evidence |
| SGATE-4 | ORDERING_GATE | enforce upstream/downstream execution order | order declaration exists | order ambiguity detected |
| SGATE-5 | SOT_SYNC_GATE | require status/log/roadmap pointer sync | `GOV_STATUS`, `DEV_LOGS`, `ROADMAP` updated | pointer or chronology drift |
| SGATE-6 | CLOSURE_GATE | close subtree operation deterministically | ASR indexed + closure state set | closure without ASR/index sync |

## Transition Rule
- `ALLOW` path:
  `SGATE-1 -> SGATE-2 -> SGATE-3 -> SGATE-4 -> SGATE-5 -> SGATE-6`
- Any gate failure transitions to:
  `BLOCKED_PENDING_SUBTREE_DECISION_ON_CONFLICT`

## Severity Classes
- `GREEN`: proceed.
- `YELLOW`: manual review required.
- `RED`: deny and remediate.
