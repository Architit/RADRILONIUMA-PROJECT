# TOOLING ERROR ANALYSIS — PREVIOUS COMMAND

timestamp_utc: 2026-02-16T06:18:10Z
status: CLOSED_WITH_PREVENTION
classification: TV_UNSAFE_COMMAND_COMPOSITION

## Incident Summary
- Error observed:
  - `/bin/bash: line 1: EVIDENCE_POLICY.md: command not found`
- Context:
  - command used `rg -n` with a pattern containing backticks in a double-quoted shell string.

## Root Cause
- Shell interpreted backticks as command substitution.
- Substituted token `EVIDENCE_POLICY.md` was treated as executable command, causing `command not found`.

## Why It Happened
- The pattern was passed in a form where shell parsing occurred before `rg` received literal text.
- Command construction did not enforce literal-safe quoting for backticks.

## Corrective Action
1) Introduced tooling safety governance:
   `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`.
2) Added stack-level tooling controls:
   `ECOSYSTEM_TOOLING_STACK_V2.md`.
3) Added tooling inventory with safety protocol as critical tool:
   `TOOLING_CATALOG_V2.md`.

## Preventive Rule
- Any shell pattern containing backticks must be:
  - single-quoted as literal text, or
  - backticks escaped.

## Verification
- Safety protocol and tooling stack were bound into governance and indexed by ASR.
- Extended ATPLT/debug closure and multi-class error matrix:
  `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md`.
