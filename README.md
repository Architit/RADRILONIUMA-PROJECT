# RADRILONIUMA-PROJECT

Central DevKit for the RADRILONIUMA ecosystem.

## DevKit patching (canonical)

Apply a unified diff and stage the result:

- `cat change.patch | devkit/patch.sh`
- `devkit/patch.sh --file <path>`

## Shell preflight checker (multi-shell)

Automated preflight gate for safe shell command patterns:

- `devkit/shell_preflight.sh --shell bash --command "rg -n 'safe pattern' README.md"`
- `devkit/shell_preflight.sh --shell powershell --file /tmp/commands.txt`

Supported profiles:
- `bash`
- `gitbash`
- `powershell`
- `azureshell`
- `cmd`

## Task Spec Layer (declarative)

DevKit defines the **Task Spec contract format** only. Real task specs live in **LAM / Taskarid**.

Artifacts:
- `TASK_SPEC.md` — Task Spec contract (core)
- `devkit/task_spec_template.yaml` — declarative template
- `devkit/task_spec_example.yaml` — declarative example

Hard constraints:
- contracts-first
- observability-first
- derivation-only
- NO runtime logic
- NO execution-path impact
