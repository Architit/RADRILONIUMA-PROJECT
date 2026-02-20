# COMPATIBILITY MATRIX

status: DRAFT
generated_utc: 2026-02-16T02:38:41Z
scope: kernel vNext governance compatibility
kernel_target: RADRILONIUMA-PROJECT@main

## Policy Baseline
- contracts-first
- observability-first
- derivation-only
- no runtime logic impact from governance contracts

## Change Classes
| class_id | class_name | default_type | allowed_without_break_window | required_controls |
|---|---|---|---|---|
| cm1 | governance_doc_updates | non-breaking | yes | ASR + map/status sync |
| cm2 | contract_field_addition_optional | non-breaking | yes | backward-compatible parser behavior |
| cm3 | contract_field_rename_or_removal | breaking | no | compatibility window + migration note + explicit decision ASR |
| cm4 | protocol_chain_order_change | breaking | no | approval gate + regression evidence |
| cm5 | watchdog cadence parameter change | conditional-breaking | no | SLA impact assessment + rollout plan |
| cm6 | state model enum extension | conditional | yes | parser default/fallback declared |
| cm7 | state model enum removal/change | breaking | no | migration + blocker evidence map |
| cm8 | index/log write-order change | breaking | no | governance contract update + replay test |

## Consumer Surfaces
| surface | compatibility_level | notes |
|---|---|---|
| `GOV_STATUS.md` parsers | strict-key-aware | section-level keys must remain stable or versioned |
| `TASK_MAP.md` automation | moderate | additive fields allowed; semantic state changes gated |
| `WORKFLOW_SNAPSHOT_STATE.md` checkpoint readers | moderate | checkpoint tuple must stay append-safe |
| `gov/asr/INDEX.md` index readers | strict-format-aware | entry pattern must stay deterministic |
| downstream repos (`LAM`, agents) | provisional | final matrix depends on declared downstream contracts |

## Compatibility Windows (initial)
- breaking_window_policy: DECIDED_PROVISIONAL (`14_calendar_days`) via `BREAK_WINDOW_AND_DOWNSTREAM_ORDER_DECISION_CONTRACT.md`
- default_non_breaking_rollout: immediate with ASR evidence
- deprecation_notice_requirement: required for breaking/conditional-breaking classes
- final_release_tagging_policy: DECIDED_PROVISIONAL via `RELEASE_TAGGING_AND_HIGH_IMPACT_THRESHOLD_DECISION_CONTRACT.md`
- downstream_high_impact_threshold: DECIDED_PROVISIONAL via `RELEASE_TAGGING_AND_HIGH_IMPACT_THRESHOLD_DECISION_CONTRACT.md`

## Release Gate Checklist (vNext draft)
1) boundary contract updated (`KERNEL_BOUNDARY_CONTRACT.md`)
2) compatibility matrix impact row evaluated
3) ASR registered with explicit class_id decision
4) governance surfaces synchronized (logs/roadmap/status/snapshot/task/index)
5) unresolved evidence gaps explicitly declared
