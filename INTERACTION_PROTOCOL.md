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

После перезапуска / нового чата работа продолжается
ТОЛЬКО после сигнала пользователя:

вернулся, продолжаем Phase X.Y

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
