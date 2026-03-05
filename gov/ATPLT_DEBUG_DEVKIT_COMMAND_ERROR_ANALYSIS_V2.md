# ATPLT DEBUG DEVKIT COMMAND ERROR ANALYSIS V2

timestamp_utc: 2026-02-16T07:02:10Z
status: CLOSED_WITH_PREVENTION
scope: analysis of previously observed command execution failures

## Error Class A — Unsafe shell composition
- symptom:
  - `/bin/bash: line 1: EVIDENCE_POLICY.md: command not found`
- root cause:
  - backticks inside double-quoted command were parsed as command substitution.
- prevention:
  - single-quote literal patterns or escape backticks.
  - enforce preflight rule: `PF_BACKTICK_SUBSTITUTION_RISK`.

## Error Class B — PowerShell variable+colon parser failure
- symptom:
  - `Variable reference is not valid. ':' was not followed by a valid variable name character.`
- root cause:
  - interpolated pattern like `"$me:(OI)..."` without braces.
- prevention:
  - use `"${me}:(OI)..."`.
  - enforce preflight rule: `PF_PWSH_VAR_COLON_BRACES_REQUIRED`.

## Error Class C — Permission denied on ACL mutation
- symptom:
  - `Access is denied` on recursive `icacls` target.
- root cause:
  - insufficient privilege/ownership on target path.
- prevention:
  - classify as `TV_PERMISSION_DENIED`.
  - require explicit privilege gate decision before retry.

## Bound Controls
- `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`
- `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md`
- `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`

## Result
- command_error_root_cause_state: RESOLVED_WITH_PREVENTION
- retry_policy_state: PREFLIGHT_REQUIRED
- subtree_debug_extension_state: ACTIVE
