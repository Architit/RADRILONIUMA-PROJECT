# ASR — Subtree + ATPLT Debug Compliance Wave (t53)

timestamp_utc: 2026-02-16T07:11:10Z
asr_id: subtree-atplt-debug-compliance-wave-t53
scope: compliance scan for subtree governance and ATPLT debug/devkit protocol
mode: compliance_wave

## Task
- Execute compliance verification for `M36 + M37` and produce remediation-focused report.

## Actions
- ran protocol/state/atlas/task marker scan for `M36` and `M37`
- validated preflight behavior for:
  - PowerShell variable+colon parser risk
  - bash backtick substitution risk
- produced `SUBTREE_ATPLT_DEBUG_COMPLIANCE_REPORT_V2.md`
- extended tooling taxonomy with `TV_PREFLIGHT_INVOCATION_QUOTING_RISK`
- synchronized SoT journals and ASR index

## Result
- compliance_state: PASS_WITH_REMEDIATION
- non_blocking_findings: 2
- finding_1: SUBTREES_LOCK freshness lag (YELLOW)
- finding_2: preflight invocation quoting risk before checker (YELLOW)
- next_wave_required: lock refresh + preflight invocation integrity baseline
