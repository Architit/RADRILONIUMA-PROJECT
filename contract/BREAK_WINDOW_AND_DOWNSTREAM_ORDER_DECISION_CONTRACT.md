# BREAK WINDOW AND DOWNSTREAM ORDER DECISION CONTRACT

status: DECIDED_FINAL
generated_utc: 2026-02-16T02:44:31Z
scope: kernel vNext migration governance decisions
kernel_target: RADRILONIUMA-PROJECT@main

## Decision 1 — Breaking Window Policy
- decision_id: bwp_v1
- policy: `14_calendar_days` deprecation/break window for breaking classes (`cm3`, `cm4`, `cm7`, `cm8`)
- conditional_breaking_policy (`cm5`): staged rollout with explicit SLA review ASR before activation
- enforcement: no breaking-class merge to kernel control plane without:
  1) decision ASR
  2) migration note
  3) impacted-surface checklist

## Decision 2 — Downstream Migration Ordering Lock
- decision_id: dmol_v1
- locked_order:
  1) `RADRILONIUMA-PROJECT` (SoT kernel control plane)
  2) `LAM` (primary integration layer)
  3) `LAM_Test_Agent` (test/integration harness)
  4) `LAM-Codex_Agent`
  5) `LAM_Comunication_Agent`
  6) `LAM_DATA_Src`
  7) `Roaudter-agent`
  8) `Archivator_Agent`
  9) `Operator_Agent`
  10) `CORE`
  11) `CORE_RECLONE_CLEAN`
  12) `J.A.R.V.I.S`
  13) `System-`
  14) `Trianiuma`
  15) `Trianiuma_MEM_CORE`
  16) `TRIANIUMA_DATA_BASE`

## Rationale (fact-based)
- SoT-first model is explicit in governance artifacts.
- Submodule-linked and agent-integrated repos are migrated before peripheral satellites.
- Test harness (`LAM_Test_Agent`) is placed before agent rollout for compatibility verification.

## Finalization
- finalization_state: FINALIZED_BY_PHASE5
- finalization_contract: `PHASE5_PROVISIONAL_DECISIONS_FINALIZATION_CONTRACT.md`
