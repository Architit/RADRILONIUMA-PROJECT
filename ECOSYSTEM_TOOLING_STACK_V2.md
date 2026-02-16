# ECOSYSTEM TOOLING STACK V2

tooling_stack_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: DevKit and governance tooling surfaces
effective_utc: 2026-02-16T07:52:10Z

## Purpose
- Standardize ecosystem tooling boundaries and execution safety.
- Prevent command-construction failures and non-deterministic tooling behavior.

## Tooling Domains
1) `TD0_CANONICAL_PATCHING`
- canonical patch apply flow.
- primary artifacts:
  - `devkit/patch.sh`
  - `devkit/patch.py`

2) `TD1_VERIFICATION_AND_BOOTSTRAP`
- environment bootstrap and deterministic checks.
- primary artifacts:
  - `devkit/bootstrap.sh`
  - `devkit/check.sh`
  - `devkit/rt.sh`
  - `devkit/rtv.sh`

3) `TD2_TASK_SPEC_TOOLING`
- declarative task-spec template and examples.
- primary artifacts:
  - `TASK_SPEC.md`
  - `devkit/task_spec_template.yaml`
  - `devkit/task_spec_example.yaml`

4) `TD3_GOVERNANCE_TOOLING_GATES`
- safety rules for command composition and shell invocation.
- primary artifacts:
  - `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`
  - `TOOLING_CATALOG_V2.md`

5) `TD4_SHELL_PREFLIGHT_AUTOMATION`
- automated command preflight checker for multi-shell profiles.
- primary artifacts:
  - `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md`
  - `devkit/shell_preflight_check.py`
  - `devkit/shell_preflight.sh`

6) `TD5_ATPLT_DEBUG_DEVKIT`
- deterministic debug lifecycle for command-failure analysis and safe retry.
- primary artifacts:
  - `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`
  - `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md`

## Tooling Invariants
- No runtime execution-path mutation from governance tooling updates.
- Every tooling change must produce:
  - ASR evidence,
  - SoT synchronization,
  - explicit risk note if behavior changes.

## Tooling Validation Gates
- `TGATE_CATALOG`: tool inventory and role mapping complete.
- `TGATE_SAFETY`: shell command composition rules satisfied.
- `TGATE_PATCHER`: canonical patching path preserved.
- `TGATE_SYNC`: governance write-order synchronization complete.

## Violation Taxonomy
- `TV_UNSAFE_COMMAND_COMPOSITION`
- `TV_UNDECLARED_TOOL_ROLE`
- `TV_PATCHER_PATH_DRIFT`
- `TV_TOOLING_SYNC_DRIFT`
- `TV_PREFLIGHT_PROFILE_MISMATCH`
- `TV_PREFLIGHT_INVOCATION_QUOTING_RISK`
- `TV_PWSH_VAR_COLON_BRACES_REQUIRED`
- `TV_ENV_PROFILE_UNDECLARED_OR_MISMATCHED`

## Binding
- Canonical tool inventory: `TOOLING_CATALOG_V2.md`.
- Canonical execution safety: `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`.
- Canonical shell preflight contract: `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md`.
- Canonical ATPLT debug protocol: `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`.
- Environment runtime gates: `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md`.
