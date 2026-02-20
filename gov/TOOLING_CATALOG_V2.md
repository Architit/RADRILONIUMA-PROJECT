# TOOLING CATALOG V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T07:02:10Z
scope: ecosystem tool inventory and ownership roles

## Tool Inventory
| tool_id | path | domain | role | criticality | status |
|---|---|---|---|---|---|
| TOOL-PATCH-SH | `devkit/patch.sh` | TD0_CANONICAL_PATCHING | canonical patch applier | HIGH | ACTIVE |
| TOOL-PATCH-PY | `devkit/patch.py` | TD0_CANONICAL_PATCHING | deterministic patch helper | MEDIUM | ACTIVE |
| TOOL-BOOTSTRAP | `devkit/bootstrap.sh` | TD1_VERIFICATION_AND_BOOTSTRAP | environment setup | MEDIUM | ACTIVE |
| TOOL-CHECK | `devkit/check.sh` | TD1_VERIFICATION_AND_BOOTSTRAP | deterministic validation entry | HIGH | ACTIVE |
| TOOL-RT | `devkit/rt.sh` | TD1_VERIFICATION_AND_BOOTSTRAP | runtime check shim | MEDIUM | ACTIVE |
| TOOL-RTV | `devkit/rtv.sh` | TD1_VERIFICATION_AND_BOOTSTRAP | runtime verbose check shim | MEDIUM | ACTIVE |
| TOOL-TASKSPEC-TPL | `devkit/task_spec_template.yaml` | TD2_TASK_SPEC_TOOLING | task spec template | MEDIUM | ACTIVE |
| TOOL-TASKSPEC-EX | `devkit/task_spec_example.yaml` | TD2_TASK_SPEC_TOOLING | task spec example | LOW | ACTIVE |
| TOOL-SAFETY-PROTOCOL | `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md` | TD3_GOVERNANCE_TOOLING_GATES | shell safety governance | HIGH | ACTIVE |
| TOOL-SHELL-PREFLIGHT-CHECK | `devkit/shell_preflight_check.py` | TD4_SHELL_PREFLIGHT_AUTOMATION | multi-shell preflight checker | HIGH | ACTIVE |
| TOOL-SHELL-PREFLIGHT-WRAP | `devkit/shell_preflight.sh` | TD4_SHELL_PREFLIGHT_AUTOMATION | preflight wrapper | MEDIUM | ACTIVE |
| TOOL-SHELL-PREFLIGHT-CONTRACT | `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md` | TD4_SHELL_PREFLIGHT_AUTOMATION | preflight governance contract | HIGH | ACTIVE |
| TOOL-ATPLT-DEBUG-PROTOCOL | `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md` | TD5_ATPLT_DEBUG_DEVKIT | ATPLT debug flow contract | HIGH | ACTIVE |
| TOOL-ATPLT-ERROR-ANALYSIS | `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md` | TD5_ATPLT_DEBUG_DEVKIT | command error root-cause matrix | HIGH | ACTIVE |

## Ownership Roles
- tooling_maintainer
- verification_owner
- governance_operator

## Rules
- Tool role changes require catalog update and ASR registration.
- High criticality tool updates require explicit rollback note.
