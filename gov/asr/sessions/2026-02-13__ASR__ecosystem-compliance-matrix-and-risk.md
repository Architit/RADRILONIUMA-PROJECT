# ASR Session — ecosystem-compliance-matrix-and-risk

timestamp: 2026-02-13T07:09:21Z
scope: RADRILONIUMA ecosystem
type: governance/asr

## Objective
- Build a unified compliance slice for maps/protocols/logs/snapshot/restart semantics.
- Record explicit repo risk for `windows-migrated-b-core/CORE`.

## Compliance Matrix (facts-only)

| Repo | ROADMAP | DEV_LOGS | INTERACTION_PROTOCOL | WORKFLOW_SNAPSHOT_STATE | Restart block normalized | Dirty entries |
| --- | --- | --- | --- | --- | --- | --- |
| repos/Roaudter-agent | yes | yes | yes | yes | yes | 4 |
| repos/windows-migrated-b-core/CORE | yes | yes | yes | yes | yes | 28559 |
| work/Archivator_Agent | yes | yes | yes | yes | yes | 9 |
| work/CORE | yes | yes | yes | yes | yes | 9 |
| work/J.A.R.V.I.S | yes | yes | yes | yes | yes | 9 |
| work/LAM | yes | yes | yes | yes | yes | 4 |
| work/LAM-Codex_Agent | yes | yes | yes | yes | yes | 8 |
| work/LAM_Comunication_Agent | yes | yes | yes | yes | yes | 8 |
| work/LAM_DATA_Src | yes | yes | yes | yes | yes | 9 |
| work/LAM_Test_Agent | yes | yes | yes | yes | yes | 10 |
| work/Operator_Agent | yes | yes | yes | yes | yes | 9 |
| work/RADRILONIUMA-PROJECT | yes | yes | yes | yes | canonical in M3 | 5 |
| work/Roaudter-agent | yes | yes | yes | yes | yes | 8 |
| work/System- | yes | yes | yes | yes | yes | 9 |
| work/TRIANIUMA_DATA_BASE | yes | yes | yes | yes | yes | 9 |
| work/Trianiuma | yes | yes | yes | yes | yes | 8 |
| work/Trianiuma_MEM_CORE | yes | yes | yes | yes | yes | 10 |

## Repo Risk Block
- Repo: `repos/windows-migrated-b-core/CORE`
- Risk class: `HIGH`
- Facts:
  - branch state: `No commits yet on main...origin/main [gone]`
  - dirty entries: `28559`
  - large staged add/delete corpus from migrated artifacts
- Impact:
  - reliable governance commit wave is blocked for this repository
  - repository should be isolated from wave-level protocol compliance metrics until cleaned
- Non-destructive handling:
  - keep risk explicitly recorded
  - do not run destructive reset operations
  - continue governance wave for other repositories

## Outcome
- Ecosystem compliance matrix published.
- Risk for windows-migrated CORE explicitly recorded and isolated from clean-wave closure.
