# RADRILONIUMA DevKit Roadmap

This repository is the central DevKit for the RADRILONIUMA ecosystem.

Governance focus:

## Phase 4 — Governance Synchronization Layer (Subtree-based)

## Phase 4.A — DevKit Subtree Distribution [DONE]

## Phase 4.B — Workflow Snapshot (Export/Import) [DONE]
- Workflow Snapshot: canonical split architecture (CONTRACT/STATE). `WORKFLOW_SNAPSHOT.md` is deprecated.
- ssn rstrt формализован как двухфазный процесс: snapshot export → import.
- Исключена зависимость от истории чата.
- Введён DEVKIT_SUBTREE_DISTRIBUTION.md как контракт политики subtree.
- Зафиксированы нормативные артефакты DevKit.
- Подтверждено: policy-only, non-runtime, derivation-only.

## Interaction Protocol — Restart Signals
- Unified: in ACTIVE chat, both `ssn rstrt` and `cld rstrt` trigger **Phase 1 (EXPORT) only**. New chat: `ssn rstrt` = Phase 2 (IMPORT), `cld rstrt` = Phase 2 (IMPORT) + environment sync.

- Clarified: `ssn rstrt` in active chat = Phase 1 (EXPORT) only (snapshot refresh). In a new chat = Phase 2 (IMPORT).

- Hotfix: introduced SS-level snapshot artifacts for cold restart:
  - SYSTEM_STATE_CONTRACT.md (contract)
  - SYSTEM_STATE.md (derived state)
  - `cld rstrt` now includes SS capture/verification (observability-only)

- Добавлены каноничные сигналы: ssn rstrt и cld rstrt.
- Формально разведены Session Restart и Cold Restart.
- The DevKit is mandatory for all ecosystem development and integration work.
- The canonical patcher is `devkit/patch.sh`.
- Tooling and processes must comply with these mandates.
- Changes to this governance require explicit review and consensus.

## Interaction Protocol — Governance Hardening [DONE]
- Added mandatory Governance Review Stage before starting any new execution phase.
- Fixed mandatory protocol governance update order: `DEV_LOGS.md` -> `ROADMAP.md` -> `INTERACTION_PROTOCOL.md`.
- Added phase close invariant: clean working tree is required before governance close.

## Phase 3.0.C — DevKit patcher UX hardening [DONE]

## Phase 3.1.C.1 — Task Spec Contract (core) [DONE]

## Phase 3.1.C.2 — Task Spec Templates [DONE]

## Phase 3.1.C.3 — Minimal Documentation Wiring [DONE]
- README обновлён для отражения Task Spec Layer.
- Указаны артефакты: TASK_SPEC.md и YAML templates.
- Без runtime-логики и без execution-path влияния.
- Добавлены декларативные YAML: task_spec_template.yaml и task_spec_example.yaml.
- Без runtime-логики, без execution-path влияния.
- Предназначено для Codex/agent исполнения.

## Phase 3.2 — Ecosystem Structural Layer

## Phase 3.2.A — Structural Definition [DONE]

## Phase 3.2.B — Naming Model [DONE]

## Phase 3.2.C — Subtree Strategy [DONE]
- Введён SUBTREE_STRATEGY.md как контракт-level политика git subtree.
- Зафиксированы правила импорта, обновления и локальных адаптаций.
- Реализация отсутствует: policy-only, non-runtime.
- Введён NAMING_MODEL.md как формальный контракт 3-уровневой модели имён.
- Зафиксированы обязательные уровни: True-name / Public nickname / System ID.
- Добавлены канонические референсы (Loarachspoiszat, Tendshpoisat).
- Введён ECOSYSTEM_STRUCTURE.md как не-runtime контракт экосистемной структуры.
- Зафиксированы структурные контейнеры (Loarachspoiszat / Tendshpoisat).
- Зафиксирована 3-уровневая модель имён и subtree-стратегия (intent-only).
- Repo-native integration containers (no runtime).
- 3-level naming model (True name / Public nickname / System ID).
- Git subtree strategy for ecosystem distribution.
- Strict separation from Task Spec Layer.
- Добавлен TASK_SPEC.md как декларативный контракт Task Spec.
- Контракт определяет формат и связь: Task → Patch → devkit/patch.sh.
- Без runtime-логики, execution-path влияния, шаблонов или wiring.
- CLI usage / --help зафиксирован как контракт
- fail-fast при отсутствии stdin
- pager исключён из workflow
- добавлен альтернативный input: --file <path>
- DevKit patcher готов к CI / Codex / агентному исполнению

## Phase 4.C — Cross-repo Governance Rules [DONE]
- Зафиксированы межрепозиторные governance-правила синхронизации DevKit governance-артефактов (scope IN/OUT/DERIVED).
- Определены роли: DevKit (SoT), LAM (derivation/integration), downstream (adoption).
- Описан policy-level workflow proposal → canonical acceptance (DevKit) → distribution → adoption.
- Добавлена модель versioning/traceability; semantic governance tag обязателен (policy-only, без enforcement).

## Phase 5 — Rollout & Ecosystem Observability Layer

## Phase 5.A — Repo Rollout Analysis [DONE]
- DevKit подтверждён как Source of Truth (SoT).
- Определена стратегия governance tagging waves (SoT → LAM → downstream).
- Зафиксирован формат Ecosystem Status Dashboard.
- Policy-only, observability-first, derivation-only.
- Execution gate opened by governance decision on 2026-02-12.
- Active objective: produce facts-only rollout matrix with DoD/dependencies per repo.
- Completion: SoT/LAM/Roaudter adoption waves verified and synced (2026-02-12).

## Phase 5.B — Ecosystem Coverage Expansion [ACTIVE]
- Цель: закрыть матрицу покрытия governance-артефактов по репозиториям (SoT/LAM/downstream).
- Верификация: только facts-only ESS/ASR наблюдаемость, без rollout execution.
- Prerequisite: завершить Governance Review Stage и синхронизацию протокольной структуры (DEV_MAP baseline).
- Execution activated: clone remaining ecosystem repositories from origin into local workspace and verify sync status.

---
**Current Development Stage:**
Phase 5.B Execution — Ecosystem Coverage Expansion
(facts-only coverage expansion in policy layer; no runtime rollout)

- [x] 2026-02-13 — governance: postreview sync with LAM completed; LAM R6 readiness captured (READY=0, BLOCKED=14), RADR stage remains Phase 5.B execution

- [x] 2026-02-13 — governance: host-role contract synced with LAM (builder online vendoring / runner offline --no-index --find-links)

- [x] 2026-02-13 — governance: synced LAM R6.1 host-split success (DONE=4, PENDING=11) and prepared transition to R6.2

- [x] 2026-02-13 — governance: synced LAM R6.2 host-split success (DONE=7, PENDING=8)
- [x] 2026-02-13 — governance: synced LAM R6.3 host-split success (DONE=10, PENDING=5)
- [x] 2026-02-13 — governance: synced LAM R6.4 host-split success (DONE=13, PENDING=2)
- [x] 2026-02-13 — governance: synced LAM R6.5 host-split success (DONE=14, PENDING=1)
