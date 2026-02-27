# DIRECTIVE: 06-BRIDGE-PURIFICATION
**Status:** ISSUED
**Assignee:** LAM_Test_Agent
**Goal:** Erase secrets from history and remove archives.

## Tasks
1. `git reset --hard origin/main`
2. Update `.gitignore` to block `memory/`.
3. Restore:
   - `IDENTITY.md`
   - `AGENT_INSTRUCTIONS.md`
   - `gov/INTERACTION_PROTOCOL.md`
   - `data/local/transit/neutral_layer/`
4. Commit changes.
5. DO NOT PUSH.

## Verification
Ensure no OpenAI keys remain in the working tree.
