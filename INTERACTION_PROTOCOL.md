# RADRILONIUMA — Interaction Protocol

## Назначение
Каноничный протокол взаимодействия при разработке и сопровождении
центрального DevKit проекта RADRILONIUMA.
Протокол обязателен для человека и ассистента.

---

## Базовый режим работы

Работа ведётся ТОЛЬКО циклами:

Context Sync
→ Action Block (1–3 команды)
→ Safety Check (git diff --cached)
→ Verification
→ Governance (DEV_LOGS / ROADMAP)

После каждого блока — СТОП и ожидание вывода пользователя.

---

## Правила команд

- Команды выводятся ТОЛЬКО в bash-блоках
- Никакого поясняющего текста между командами
- Никаких команд «вслепую»
- Один дефект → один фикс → один run → один commit
- Перед коммитом обязательно:
  - git diff --stat
  - ключевой git diff по затронутым файлам

---

## Жёсткие границы

- contracts-first
- observability-first
- derivation-only
- NO runtime logic
- NO execution-path impact
- NO self-modification
- NO inline-редактирования
- NO apply_patch / applypatch / apply-patch

Разрешено:
- devkit/patch.sh
- git apply --index (только при починке DevKit)

---

## DevKit Governance

- Central DevKit: RADRILONIUMA-PROJECT
- Каноничный патчер: devkit/patch.sh
- DevKit обязателен для всей экосистемы

---

## Cold Restart / Recovery

### Phase 1 (EXPORT) — Canonical Export Procedure (contract-bound)

Назначение:
- Зафиксировать свежий derived snapshot ТЕКУЩЕГО контекста сессии.
- Completion EXPORT определяется контрактно: contract↔state семантическая согласованность (не наличие файлов).

Артефакты (обязательные в Phase 1 EXPORT):
- WORKFLOW_SNAPSHOT_STATE.md  (per WORKFLOW_SNAPSHOT_CONTRACT.md)
- SYSTEM_STATE.md            (per SYSTEM_STATE_CONTRACT.md)

Жёсткие правила:
- derivation-only (facts-only state)
- NO runtime logic / NO execution-path impact
- EXPORT обязан обновлять timestamp и сессионно-релевантные факты
- EXPORT не должен фиксировать неверную семантику рестарта в NEW_CHAT_INIT_MESSAGE

Минимум полей для refresh:
1) WORKFLOW_SNAPSHOT_STATE.md
   - Identity.timestamp (UTC now)
   - repo, branch
   - phase pointer (Phase X.Y + status)
   - Git status: точный вывод `git status -sb` на момент EXPORT
   - Recent commits window (короткий derived список)
   - NEW_CHAT_INIT_MESSAGE (семантика обязана быть корректной):
       - ACTIVE chat: Proceed with Phase 1 (EXPORT-only). IMPORT forbidden.
       - NEW chat:    Proceed with Phase 2 (IMPORT).
2) SYSTEM_STATE.md
   - Identity.timestamp (UTC now)
   - host/substrate/os/kernel/shell/git/python (facts-only)
   - workspace_root и repo_paths (facts-only)

Критерии завершения EXPORT (mandatory):
- оба state-файла обновлены в одном EXPORT-окне (timestamps refreshed)
- WORKFLOW_SNAPSHOT_STATE Git status соответствует текущему репо на момент EXPORT
- NEW_CHAT_INIT_MESSAGE согласован с ACTIVE vs NEW chat семантикой

### Session Restart (ssn rstrt)
**Clarification — restart semantics (deterministic):**
- **ACTIVE chat:** both `ssn rstrt` and `cld rstrt` trigger **Phase 1 (EXPORT) only** (snapshot refresh). **IMPORT is forbidden** because context is not lost.
- **NEW chat:** `ssn rstrt` starts **Phase 2 (IMPORT)** (Phase 1 EXPORT is assumed completed in the previous session).
- **NEW chat:** `cld rstrt` starts **Phase 2 (IMPORT)** plus **environment sync / minimal recovery**.

Используется при новом чате без сброса среды.

Сигнал пользователя:
ssn rstrt

Действия ассистента:
- переобъявить текущую Phase
- выполнить read-only Context Sync (pwd, git status -sb)
- выполнить Phase 1 (EXPORT) по Canonical Export Procedure (contract-bound)
- продолжить обычные циклы

Никакого environment recovery.

### Cold Restart (cld rstrt)
Используется после перезагрузки машины/WSL/терминала.

Сигнал пользователя:
cld rstrt

Действия ассистента:
- переобъявить текущую Phase
- выполнить Context + Environment Sync (pwd, git status -sb)
- при необходимости минимальные recovery-действия
- продолжить обычные циклы

SS-layer (System State) for cld rstrt (mandatory):
- CONTRACT: SYSTEM_STATE_CONTRACT.md
- STATE: SYSTEM_STATE.md (facts-only, derived)
- Phase 1 (EXPORT) must refresh SYSTEM_STATE.md alongside WORKFLOW_SNAPSHOT_STATE.md
- Phase 2 (IMPORT) must verify SYSTEM_STATE.md and perform environment sync / minimal recovery based on facts only

После перезапуска / нового чата работа продолжается
ТОЛЬКО после сигнала пользователя:

вернулся, продолжаем Phase X.Y

---

## Governance Review Stage (mandatory)

После завершения фаз в ROADMAP следующий шаг разработки ОБЯЗАТЕЛЕН
и не является execution-фазой.

Governance Review Stage включает:
- обзор ROADMAP и DEV_LOGS
- картографирование фаз, этапов и зависимостей
- обновление и синхронизацию протоколов
- обзор тестов, окружений и состояния репозиториев
- сводное состояние всей экосистемы

Запрещено начинать новую execution-фазу
до завершения Governance Review Stage.

---
## Governance Rules

### Завершение фаз
Завершённая фаза обязана быть отражена в:
- DEV_LOGS.md
- ROADMAP.md

### Обновление протокола
При изменении INTERACTION_PROTOCOL.md порядок ОБЯЗАТЕЛЕН:

DEV_LOGS
→ ROADMAP
→ INTERACTION_PROTOCOL.md
→ commit + push

Без Governance:
- протокол невалиден
- переходы фаз запрещены
- промпты для нового чата запрещены

---

## Переход в новый чат

Перед генерацией промпта ассистент обязан:
- проверить Governance
- подтвердить push
- подтвердить DEV_LOGS / ROADMAP

---

## Статус
Каноничный протокол взаимодействия RADRILONIUMA DevKit.

---

## Governance Extensions (Phase 4.C)

В Phase 4.C введены следующие каноничные расширения протокола:

### System State Snapshot (SS)
- SYSTEM_STATE_CONTRACT.md — contract (policy-only)
- SYSTEM_STATE.md — derived system/environment facts (observability-only)
- Used by cld rstrt export/import to preserve/restore environment context

### Workflow Snapshot Architecture
- Каноничная split-архитектура snapshot:
  - WORKFLOW_SNAPSHOT_CONTRACT.md — контракт
  - WORKFLOW_SNAPSHOT_STATE.md — состояние
- Contract и State разделены и обновляются независимо.
- WORKFLOW_SNAPSHOT.md более не используется.

### Session Restart (ssn rstrt) уточнение
- При старте НОВОГО чата с сигналом `ssn rstrt`:
  - ассистент автоматически начинает с Phase 2 (IMPORT),
  - Phase 1 (EXPORT) считается выполненной в предыдущей сессии.

### Governance Versioning
- Все governance-изменения ОБЯЗАНЫ:
  - фиксироваться commit’ом
  - иметь semantic governance tag (mandatory)
- DevKit является единственным version authority.

### Minimum Traceability Guarantee
Гарантируется минимальная трассируемость через:
- Git history
- Governance tags
- Subtree commit linkage

Дополнительные метаданные не требуются.

### Phase Close Invariant
- Перед закрытием фазы рабочее дерево ДОЛЖНО быть clean.
- Dirty working tree блокирует governance close.
