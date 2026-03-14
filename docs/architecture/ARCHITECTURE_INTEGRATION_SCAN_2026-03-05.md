# ARCHITECTURE_INTEGRATION_SCAN_2026-03-05

scan_date: 2026-03-05
scope: master-plan integration impact

## 1. Executive Verdict
- Да, потребуется обновление почти всех ключевых агентов, но в основном на уровне контрактов, маршрутизации и runtime-обвязки, а не тотальной переписи ядра каждого агента.
- Критически затрагиваются: Task Spec, patch/integrity pipeline, transport envelope, flow control, memory indexing path, orchestration routing.

## 2. Repo Impact Matrix
| repo | status | key integration points found | impact |
|---|---|---|---|
| RADRILONIUMA-PROJECT | present | task_spec_template,patch_runtime,gateway_io,tests:15 | high |
| Archivator_Agent | present | task_spec_template,patch_runtime,gateway_io,routing_contract,task_map,territory_map,tests:7 | high |
| Operator_Agent | present | task_spec_template,patch_runtime,gateway_io,routing_contract,task_map,territory_map,tests:3 | high |
| LAM | present | task_spec_template,patch_runtime,gateway_io,task_map,territory_map,tests:8 | medium |
| LAM_Comunication_Agent | present | task_spec_template,patch_runtime,gateway_io,task_map,territory_map,tests:3 | high |
| LAM-Codex_Agent | present | task_spec_template,patch_runtime,gateway_io,routing_contract,task_map,territory_map,tests:3 | medium |
| Roaudter-agent | present | task_spec_template,patch_runtime,gateway_io,task_map,territory_map,tests:5 | medium |
| J.A.R.V.I.S | present | task_spec_template,patch_runtime,gateway_io,target_resolution,task_map,territory_map,tests:3 | high |
| Trianiuma | present | task_spec_template,patch_runtime,gateway_io,routing_contract,task_map,territory_map,tests:9 | medium |
| Trianiuma_MEM_CORE | present | task_spec_template,patch_runtime,gateway_io,task_map,territory_map,tests:5 | medium |
| TRIANIUMA_DATA_BASE | present | task_spec_template,patch_runtime,gateway_io,task_map,territory_map,tests:5 | medium |
| LAM_Test_Agent | present | task_spec_template,patch_runtime,gateway_io,routing_contract,task_map,territory_map,tests:17 | high |
| System- | present | task_spec_template,patch_runtime,gateway_io,task_map,territory_map,tests:4 | high |

## 3. Integration Surfaces (cross-repo evidence)
- Task Spec template: /home/architit/work/RADRILONIUMA-PROJECT/devkit/task_spec_template.yaml
- 3-way patch runtime: /home/architit/work/Archivator_Agent/devkit/patch.sh
- Archive + gateway I/O: /home/architit/work/Archivator_Agent/scripts/gateway_io.sh
- Target resolution protocol: /home/architit/work/J.A.R.V.I.S/ORCHESTRATION_TARGET_RESOLUTION_PROTOCOL.md
- Territory responsibility baseline: /home/architit/work/Vilami/TERRITORY_MAP.md

## 4. What must be updated first (Phase A/B/C)
1. Governance contracts and Task Spec standardization (RADRILONIUMA-PROJECT).
2. Archivator hybrid path (zip/tgz + semantic index hooks) with integrity chain.
3. Operator_Agent task ingestion path alignment with Task Spec envelope.
4. J.A.R.V.I.S routing constraints and no-global-write enforcement with deterministic target resolution.
5. Communication and backpressure integration path (LAM_Comunication_Agent + orchestrator loop).
6. Regression gates (LAM_Test_Agent, contract tests across touched repos).

## 5. Risk if skipped
- Локальные улучшения без единого интеграционного owner-map снова приведут к онтологическому дрейфу и дублированию агентных ролей.

## 6. Immediate next artifact
- Подготовить `TASK_SPEC_PACK_PHASE_A_V1.md` (owner + task_id + patch_sha256 + verify) для high-impact repos.
