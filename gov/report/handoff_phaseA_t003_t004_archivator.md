# HANDOFF DIRECTIVE: phaseA_t003 + phaseA_t004 (Archivator_Agent)

- date: `2026-03-05`
- target_repo: `/home/architit/work/Archivator_Agent`
- source_repo: `/home/architit/work/RADRILONIUMA-PROJECT`
- no_new_agents: `required`

## Scope
1. `phaseA_t003_archivator_integrity_chain`
2. `phaseA_t004_archivator_hybrid_hook`

## Preconditions
1. `devkit/patch.sh` exists and is executable.
2. `scripts/gateway_io.sh` exists.
3. `scripts/archivator_global_refresh.sh` exists.
4. `Archive/Index/` is writable.
5. Runtime flow preserves declarative Task Spec contract (`derivation_only`, `patch_sha256`, `fail-fast` semantics).

## Required Outputs
1. Integrity chain in patch apply flow:
   - recompute `sha256` before apply;
   - mismatch => hard stop (`integrity_mismatch`);
   - emit trace tuple `task_id -> spec_hash -> artifact_hash -> apply_result`.
2. Hybrid hook in one execution cycle:
   - physical archive path (`zip`/`tgz`);
   - semantic index refresh hook (`Archive/Index/*`).

## Verify Commands
For `t003`:
```bash
bash scripts/test_entrypoint.sh --control
rg -n "sha256|integrity|artifact_hash|spec_hash" devkit scripts Archive/Index
```

For `t004`:
```bash
bash scripts/test_entrypoint.sh --all
rg -n "zip|tgz|index|semantic|Archive/Index" scripts README.md
```

## Stop Conditions (Fail-Fast)
1. Integrity hash mismatch.
2. Missing precondition.
3. 3-way patch apply conflict.
4. Regression/test failure in touched surface.

## Acceptance Evidence Required Back
1. Changed files list.
2. Command outputs for verify section.
3. SHA-256 for changed patch/runtime contract files.
4. Final status: `DONE` or `BLOCKED` with reason.
