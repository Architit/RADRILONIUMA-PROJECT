# TOOLING SHELL PREFLIGHT CONTRACT V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T07:52:10Z
scope: automated preflight checker for shell-safe command patterns

## Purpose
- Provide a deterministic preflight gate before executing shell commands.
- Prevent unsafe command composition across supported shell profiles.

## Supported Shell Profiles
- `bash`
- `gitbash`
- `powershell`
- `azureshell`
- `cmd`

## Canonical Tooling
- checker: `devkit/shell_preflight_check.py`
- wrapper: `devkit/shell_preflight.sh`

## Invocation
- single command:
  - `devkit/shell_preflight.sh --shell <profile> --command "<command>"`
- command file:
  - `devkit/shell_preflight.sh --shell <profile> --file <path>`

## Decision Model
- `safe_for_execution=true` when `error_count=0`
- non-zero exit code on errors
- warnings are advisory unless escalated by governance policy

## Mandatory Safety Rules
- treat backticks as high-risk in bash-like shells unless safely quoted/escaped
- reject unbalanced quotes
- classify unsafe command composition as `TV_UNSAFE_COMMAND_COMPOSITION`
- for `powershell`, detect variable+colon parser risk and require `${var}:` form
- classify PowerShell parser risk as `TV_PWSH_VAR_COLON_BRACES_REQUIRED`
- classify host-shell expansion before preflight parsing as `TV_PREFLIGHT_INVOCATION_QUOTING_RISK`
- for complex commands, prefer `--file` mode to preserve literal payload integrity
- require environment profile declaration for high-impact command batches
- classify undeclared/mismatched environment profile as `TV_ENV_PROFILE_UNDECLARED_OR_MISMATCHED`

## Governance Binding
- Tooling stack: `ECOSYSTEM_TOOLING_STACK_V2.md`
- Tooling safety protocol: `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`
- Environment runtime protocol: `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md`
- Protocol module binding: `INTERACTION_PROTOCOL.md` (M34)
