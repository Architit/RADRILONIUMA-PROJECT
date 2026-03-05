# TASK SPEC TEMPLATE CANONICAL PATH POLICY NOTE V1

- effective_date: `2026-03-05`
- scope: `Phase A Task Spec governance`

## Rule
1. `devkit/task_spec_template.yaml` is the canonical Task Spec template path for governance and contract checks.
2. `LRPT/task_spec_template.yaml` is a legacy mirror for compatibility only.

## Enforcement
1. New governance checks and references MUST target `devkit/task_spec_template.yaml`.
2. Legacy mirror references SHOULD be treated as transitional and MUST NOT override canonical content.
