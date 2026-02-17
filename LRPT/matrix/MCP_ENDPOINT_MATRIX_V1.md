# MCP ENDPOINT MATRIX V1

| Endpoint ID | Backend | Trust Class | Scope | Direction | Status |
|---|---|---|---|---|---|
| mcp_local_gateway | local_fs | TRUSTED_INTERNAL | LRPT/TSPT + .gateway/* | read_write | ACTIVE |
| mcp_onedrive_bridge | onedrive | TRUSTED_EXTERNAL | contracts/taskspec/patch artifacts | read_write | CONDITIONAL |
| mcp_gdrive_lake | gdrive | TRUSTED_EXTERNAL | journals/log snapshots/research context | read_only | CONDITIONAL |

## Validation Gate
- Endpoint is ACTIVE only if policy metadata is complete.
- CONDITIONAL endpoints require explicit path bindings and Sentinel approval.
