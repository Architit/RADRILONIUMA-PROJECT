# RADRILONIUMA DevKit Roadmap

This repository is the central DevKit for the RADRILONIUMA ecosystem.

Governance focus:
- The DevKit is mandatory for all ecosystem development and integration work.
- The canonical patcher is `devkit/patch.sh`.
- Tooling and processes must comply with these mandates.
- Changes to this governance require explicit review and consensus.

## Phase 3.0.C — DevKit patcher UX hardening [DONE]
- CLI usage / --help зафиксирован как контракт
- fail-fast при отсутствии stdin
- pager исключён из workflow
- добавлен альтернативный input: --file <path>
- DevKit patcher готов к CI / Codex / агентному исполнению
