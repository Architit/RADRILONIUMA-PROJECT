# ENVIRONMENT CATALOG V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T07:42:10Z
scope: canonical environment profile inventory for ecosystem operations

## Environment Profiles
| env_id | substrate | os_profile | shell_profile | workspace_root | profile_state | notes |
|---|---|---|---|---|---|---|
| ENV-CORE-WSL2 | WSL2 | Ubuntu 24.04.x | bash 5.x | `/home/architit/work` | ACTIVE | canonical local execution substrate |
| ENV-POWERSHELL-HOST | Windows host shell | Windows 11 | powershell 7.x | `C:\Users\*` | SUPPORTED | ACL/path operations require parser-safe patterns |
| ENV-GITBASH-HOST | Windows host shell | Windows 11 | gitbash | `C:\Users\*` | SUPPORTED | bash-like quoting rules apply |
| ENV-AZURE-SHELL | Cloud shell | Azure managed | azureshell | cloud workspace | SUPPORTED | network/profile variance expected |
| ENV-CMD-HOST | Windows host shell | Windows 11 | cmd | `C:\Users\*` | SUPPORTED_LIMITED | legacy shell, explicit meta-char caution |

## Profile Invariants
- every environment profile must declare substrate + shell + workspace root class.
- profile-specific parser risks must be explicit in runtime protocol.
- environment profile upgrades require ASR pointer and rollback note.

## Ownership
- `environment_maintainer`
- `governance_operator`
- `tooling_maintainer`
