# RADRILONIUMA — Interaction Protocol

## Protocol Sync Header

- protocol_source: RADRILONIUMA-PROJECT
- protocol_version: v1.0.0
- last_sync_commit: 7eadfe9

---

## Назначение
Каноничный протокол взаимодействия при разработке и сопровождении
центрального DevKit проекта RADRILONIUMA.
Протокол обязателен для человека и ассистента.

## Protocol Version

- protocol_source: RADRILONIUMA-PROJECT
- protocol_version: v1.0.0
- governance_tag: gov-radr-protocol-v1.0.0

---

## M0 — Hard Constraints

- contracts-first
- observability-first
- derivation-only
- NO runtime logic
- NO execution-path impact
- NO self-modification
- NO inline-редактирования
- NO enforcement/automation

Разрешено:
- policy-level governance updates
- read-only verification/synchronization
- canonical DevKit patcher `devkit/patch.sh`

---

## M1 — Execution Cycle (Normal)

Работа ведётся циклами:

Context Sync
→ Action Block (1-3 команды)
→ Safety Check
→ Verification
→ Governance (по необходимости)

После каждого блока: STOP и ожидание сигнала пользователя.

### Safety Check (mandatory sequence)
1) `git status -sb`
2) если есть `??` или unstaged изменения, явно stage нужные файлы
3) `git diff --cached --stat`
4) ключевой `git diff --cached <file>` по затронутым артефактам

No commit allowed without visible staged diff.

---

## M2 — Output Modes

### Mode N (Normal)
Обычный режим взаимодействия по M1.

### Mode R (Recovery)
Строгий формат ответа (ровно 2 строки):
1) `MODE:R | PHASE:<...> | STAGE:<...> | STEP:<...>`
2) `ACTION:<single deterministic action or STOP reason>`

### Deterministic mode switching
Переход в Mode R обязателен, если:
- обнаружен протокольный конфликт (два взаимоисключающих шага),
- отсутствуют обязательные артефакты для текущего шага,
- невозможно однозначно определить допустимую фазу после restart.

Возврат в Mode N:
- после устранения причины и явного подтверждения пользователя.

---

## M3 — Restart Protocols

### 3.1 Canonical Phase Mapping (deterministic)

ACTIVE chat:
- `ssn rstrt` => Phase 1 (EXPORT-only)
- `cld rstrt` => Phase 1 (EXPORT-only)

NEW chat:
- `ssn rstrt` => Phase 2 (IMPORT)
- `cld rstrt` => Phase 2 (IMPORT) + environment sync / minimal recovery

### 3.2 Phase 1 (EXPORT) — Contract-bound completion

Обязательные state-артефакты:
- `WORKFLOW_SNAPSHOT_STATE.md` (per `WORKFLOW_SNAPSHOT_CONTRACT.md`)
- `SYSTEM_STATE.md` (per `SYSTEM_STATE_CONTRACT.md`)

EXPORT считается завершённым только если:
1) оба state-файла обновлены в одном export-окне,
2) timestamp-метки обновлены,
3) state-содержимое семантически согласовано с CONTRACT,
4) `WORKFLOW_SNAPSHOT_STATE.md` содержит актуальный `git status -sb`,
5) `NEW_CHAT_INIT_MESSAGE` соответствует ACTIVE/NEW semantics.

File presence alone is NOT a completion criterion.

### 3.3 Phase 2 (IMPORT)

Минимальные read-only шаги:
- прочитать `WORKFLOW_SNAPSHOT_STATE.md`
- `pwd`
- `git status -sb`
- `git log -n 12 --oneline`
- переобъявить phase/stage из snapshot и пройти Phase Alignment Gate (M4)

Для `ssn rstrt`: environment recovery запрещён.
Для `cld rstrt`: допускается минимальный facts-only environment sync.

---

## M4 — Phase Alignment Gate (Fix C/3)

### 4.1 Phase Context object (required)

Перед переходом к execution фиксируется контекст:
- `repo`
- `branch`
- `restart_signal` (`ssn rstrt` | `cld rstrt`)
- `chat_state` (`ACTIVE` | `NEW`)
- `declared_phase` (из snapshot/roadmap)
- `declared_stage`
- `constraints` (hard)

### 4.2 Allowed phase-set after restart

Допустимы только:
- ровно `declared_phase` из snapshot,
- либо его ближайший governance-parent stage, если phase неактивна,
- переходы в execution-фазы запрещены при активном Governance Review Stage.

### 4.3 Snapshot alignment rule

Если `declared_phase` в snapshot отсутствует в `ROADMAP.md`, переход блокируется до governance-sync.

### 4.4 Conflict resolution rule

При конфликте `ROADMAP` / `DEV_LOGS` / `INTERACTION_PROTOCOL` / snapshot:
1) перейти в Mode R,
2) зафиксировать конфликт как facts-only,
3) выполнить governance update order,
4) повторить Phase Alignment Gate.

---

## M5 — Governance Rules

### 5.1 Canonical update order (mandatory)

При изменении протокола порядок обязателен:
`DEV_LOGS.md` -> `ROADMAP.md` -> `INTERACTION_PROTOCOL.md` -> commit + push

### 5.2 Phase close invariant

Перед governance close рабочее дерево должно быть clean.
Dirty working tree блокирует закрытие фазы.

### 5.3 New chat handoff gate

Перед генерацией промпта нового чата обязательно:
- проверить governance consistency,
- подтвердить push,
- подтвердить актуальность `DEV_LOGS.md` и `ROADMAP.md`.

Без этого handoff запрещён.

---

## M6 — Protocol Drift Gate (mandatory)

### 6.1 Trigger points

Protocol Drift Gate MUST run:
- после каждого обновления `protocol_version`,
- перед каждой межрепозиторной governance-wave,
- перед handoff в новый чат для протокольных задач.

### 6.2 Gate checks (facts-only)

Для каждого репозитория проверяются:
- `protocol_version` в `INTERACTION_PROTOCOL.md`,
- `last_sync_commit` в `INTERACTION_PROTOCOL.md`,
- последняя дата в `ROADMAP.md`,
- последняя дата в `DEV_LOGS.md`.

### 6.3 Gate status

- `ALIGNED`: все 4 проверки консистентны и совпадают с SoT-каноном.
- `DRIFT`: найдено хотя бы одно несовпадение.
- `BLOCKED`: репозиторий структурно непригоден к проверке/синхронизации (например, object corruption).

### 6.4 Required artifacts

- ASR с матрицей gate-результатов обязателен в `gov/asr/sessions/`.
- `gov/asr/INDEX.md` должен содержать ссылку на новый gate-session.
- Для `DRIFT`/`BLOCKED` обязателен facts-only remediation checklist в `ROADMAP.md`.

---

## Governance Review Stage (mandatory)

После завершения фаз в ROADMAP следующий шаг разработки обязателен
и не является execution-фазой.

Governance Review Stage включает:
- обзор ROADMAP и DEV_LOGS,
- картографирование фаз/этапов/зависимостей,
- синхронизацию протокольных слоёв,
- обзор тестов/окружений/состояния репозиториев,
- сводное экосистемное состояние (ESS).

Запрещено начинать новую execution-фазу
до завершения Governance Review Stage.

---

## DevKit Governance Status

- Central DevKit: RADRILONIUMA-PROJECT
- Canonical patcher: `devkit/patch.sh`
- Snapshot split architecture is mandatory:
  - `WORKFLOW_SNAPSHOT_CONTRACT.md` / `WORKFLOW_SNAPSHOT_STATE.md`
  - `SYSTEM_STATE_CONTRACT.md` / `SYSTEM_STATE.md`
- `WORKFLOW_SNAPSHOT.md` is deprecated and non-canonical.
