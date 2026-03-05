# TASK SPEC VALIDATOR CONTRACT V1

## Purpose
Define a deterministic Task Spec validator contract for `spec_version: 1.1` with fail-fast behavior and normalized `error_code` outputs.

## Scope
- Input: declarative Task Spec document (`yaml`/`msgpack`) only.
- Output: validation result envelope with a terminal status.
- Runtime code injection in Task Spec is forbidden.

## Required Fields (Task Spec v1.1)
1. `spec_version`
2. `task_id`
3. `goal`
4. `constraints.derivation_only` (must be `true`)
5. `artifacts.patch_path`
6. `artifacts.patch_sha256` (must be exactly 64 lowercase hex chars)
7. `limits.timeout_ms` (positive integer)
8. `limits.max_output_tokens` (positive integer)
9. `preconditions` (non-empty list)

## Validator Rules
1. Reject Task Spec if any required field is absent.
2. Reject Task Spec if `goal` is not a single line.
3. Reject Task Spec if `constraints.derivation_only != true`.
4. Reject Task Spec if `artifacts.patch_sha256` does not match `^[a-f0-9]{64}$`.
5. Reject Task Spec if `limits.timeout_ms <= 0` or `limits.max_output_tokens <= 0`.
6. Reject Task Spec if preconditions are empty.

## Fail-Fast Contract
- The validator MUST stop on first fatal violation.
- A fail-fast rejection MUST emit one terminal `error_code`.
- No patch apply attempt is allowed after validation failure.

## Error Codes
| error_code | meaning | terminal |
|---|---|---|
| `SCHEMA_MISSING_FIELD` | Required Task Spec field absent | yes |
| `SCHEMA_INVALID_VALUE` | Field exists but violates value contract | yes |
| `INTEGRITY_HASH_INVALID` | `patch_sha256` format is invalid | yes |
| `INTEGRITY_MISMATCH` | Recomputed SHA-256 differs from declared value | yes |
| `PRECONDITION_FAILED` | Passive precondition is not satisfied | yes |
| `CONFLICT_DETECTED` | Patch apply conflict in 3-way flow | yes |

## Validation Result Envelope
```yaml
status: "success|error"
error_code: "<code or empty>"
reason: "<single-line explanation>"
task_id: "<task_id>"
spec_version: "1.1"
```

## Acceptance Criteria
1. `rg -n "Task Spec|fail-fast|error_code" contract` returns this contract.
2. Governance tests confirm contract presence and required invariants.
