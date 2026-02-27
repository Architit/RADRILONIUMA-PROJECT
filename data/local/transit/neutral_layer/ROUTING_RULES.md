# PROTOCOL: NEUTRAL LAYER ROUTING RULES (NL-ROUTING)

## 1. Overview
Настоящие правила определяют порядок перемещения данных через Нейтральный Транзитный Слой (Neutral Transit Layer) и шлюзы ADA-V1.


## 2. Default Flow Path
1.  **Ingress:** Внешняя директива поступает в `data/import/`.
2.  **Validation:** Агент проверяет директиву на соответствие контрактам в `core/contract/`.
3.  **Synapse:** Утвержденная стратегия сессии фиксируется в `data/local/transit/neutral_layer/`.
4.  **Processing:** Временные данные обрабатываются в `data/local/internal_system/`.
5.  **Egress:** Финальный результат (отфильтрованное "золото") помещается в `data/export/`.

## 3. Atomic Handshake Rule
- Любой экспорт в `data/export/` должен сопровождаться файлом-манифестом `EXPORT_MANIFEST.json`.
- Публикация из `data/export/` в основной репозиторий (SoT) разрешена только при статусе `VERIFIED`.

## 4. Cross-Repo Sync
- Данные из `data/roaming/transit/` используются только для синхронизации состояний между разными суверенными деревьями (Organs).
- Прямое исполнение кода из роуминг-слоя запрещено.

## 5. Cleanup Invariant
- По завершении фазы/сессии шлюзы `data/import/`, `data/export/` и `data/transit/` должны быть обнулены (очищены).
- `data/local/transit/neutral_layer/` сохраняет состояние до закрытия текущей дорожной карты (ROADMAP).
