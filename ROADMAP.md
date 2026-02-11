# RADRILONIUMA DevKit Roadmap

This repository is the central DevKit for the RADRILONIUMA ecosystem.

Governance focus:
- The DevKit is mandatory for all ecosystem development and integration work.
- The canonical patcher is `devkit/patch.sh`.
- Tooling and processes must comply with these mandates.
- Changes to this governance require explicit review and consensus.

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
