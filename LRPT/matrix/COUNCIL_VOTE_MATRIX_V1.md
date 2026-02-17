# COUNCIL VOTE MATRIX V1

| Vote Profile | Scope | Allowed Verdicts |
|---|---|---|
| Elafeya | heuristic feasibility, semantic clarity | APPROVE / REVISE / REJECT |
| Yakolart | contract integrity, schema consistency | APPROVE / REVISE / REJECT |
| Mirashani | safety bounds, deadloop risk, runtime impact | APPROVE / REVISE / REJECT / REJECT_RUNTIME_IMPACT |

## Consensus Gate
- Pass: >=2 APPROVE and zero REJECT_RUNTIME_IMPACT
- Hold: any REVISE without enough APPROVE
- Block: any REJECT_RUNTIME_IMPACT
