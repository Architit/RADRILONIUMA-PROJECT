# RELEASE TAGGING AND HIGH IMPACT THRESHOLD DECISION CONTRACT

status: DECIDED_FINAL
generated_utc: 2026-02-16T03:14:28Z
scope: kernel vNext release gate completion decisions
kernel_target: RADRILONIUMA-PROJECT@main

## Decision 1 — Final Release Tagging Policy
- decision_id: rtp_v1
- tagging_scheme:
  - canonical release tag: `kernel-vNEXT-<YYYYMMDD>-r<NN>`
  - protocol compatibility tag: `gov-radr-protocol-v<MAJOR.MINOR.PATCH>`
  - decision lock tag (optional): `gov-radr-decision-lock-v<MAJOR.MINOR.PATCH>`
- release tagging rule:
  - no release tag without ASR evidence and synchronized governance surfaces
  - release tag must reference a commit where release gates are `OPEN`

## Decision 2 — Downstream High-Impact Threshold Criteria
- decision_id: dht_v1
- high_impact_threshold is true when any of the following holds:
  1) change class is `cm3`, `cm4`, `cm7`, or `cm8`
  2) strict consumer surface parsing contract changes (`GOV_STATUS.md` key semantics, `gov/asr/INDEX.md` format)
  3) closure/watchdog cadence policy changes alter escalation semantics
  4) migration requires downstream adaptation contract before safe rollout

## Enforcement
- if `high_impact_threshold = true`:
  - downstream impact gate cannot be `OPEN` until adaptation status is explicit (`DONE` or `BLOCKED`)
  - release decision must include explicit risk note in ASR

## Finalization
- finalization_state: FINALIZED_BY_PHASE5
- finalization_contract: `PHASE5_PROVISIONAL_DECISIONS_FINALIZATION_CONTRACT.md`
