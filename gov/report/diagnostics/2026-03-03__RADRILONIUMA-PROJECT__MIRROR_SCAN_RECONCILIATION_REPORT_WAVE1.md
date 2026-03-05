# Mirror Scan Reconciliation Report — Wave 1

created_utc: 2026-03-03T10:11:56Z
scope: source<->target bidirectional reconciliation for quarantine restore surfaces
status: COMPLETE

## Decision Summary
- KEEP_TARGET_IDENTICAL: 36
- MERGE_REQUIRED_BIDIRECTIONAL: 4

## Merge Attention (source code/snippet preservation)
- merge_candidate_count: 4
- matrix file: `gov/report/diagnostics/2026-03-03__RADRILONIUMA-PROJECT__MIRROR_SCAN_MATRIX_WAVE1.tsv`

| source | target | decision | source_only_lines | target_only_lines | source_only_funcs | target_only_funcs |
|---|---|---|---:|---:|---|---|
| Archive/Quarantine/LRPT_NON_DEVKIT_20260303T090515Z/healing_tools/segmenter_chronicler.py | devkit/healing_tools/segmenter_chronicler.py | MERGE_REQUIRED_BIDIRECTIONAL | 7 | 5 | - | __enter__,__exit__,__init__,acquire,detect_language,discern_vector,extract_tags,load_processed_files |
| Archive/Quarantine/LRPT_NON_DEVKIT_20260303T090515Z/WORKFLOW_SNAPSHOT_STATE.md | gov/WORKFLOW_SNAPSHOT_STATE.md | MERGE_REQUIRED_BIDIRECTIONAL | 16 | 30 | - | - |
| Archive/Quarantine/DeepArchive/LRPT_DUPLICATE_ONLY_20260303T123500Z/INTERACTION_PROTOCOL.md | gov/INTERACTION_PROTOCOL.md | MERGE_REQUIRED_BIDIRECTIONAL | 4 | 39 | - | - |
| Archive/Quarantine/DeepArchive/LRPT_DUPLICATE_ONLY_20260303T123500Z/TASK_MAP.md | VLRM/map/TASK_MAP.md | MERGE_REQUIRED_BIDIRECTIONAL | 2 | 6 | - | - |

## Recommendation
1) Keep archive packaging for IDENTICAL and TARGET_AHEAD classes.
2) For MERGE_* classes, preserve unique snippets into canonical targets before final archiving source copies.
3) Apply merges in controlled queue with tests/smoke after each logical batch.
