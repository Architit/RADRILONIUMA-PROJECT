# MIRROR SCAN PRESERVED FRAGMENTS — WAVE2

Date: 2026-03-03
Repo: RADRILONIUMA-PROJECT
Purpose: retain source-only fragments for forensic/rollback value while keeping canonical targets.

---

## Pair 1
Source: `Archive/Quarantine/LRPT_NON_DEVKIT_20260303T090515Z/healing_tools/segmenter_chronicler.py`
Target: `devkit/healing_tools/segmenter_chronicler.py`
Decision: KEEP_TARGET

Preserved source-only fragment (context):
```python
if text[char_idx] in " 
\t.,;:?!":
```

Preserved source-only fragment (context):
```python
f.write(json.dumps({
    "id": block_id, 
    "src": rel_path, 
    "vector": vector, 
    "path": str(block_path.relative_to(archive_root))
}, ensure_ascii=False) + "
")
```

---

## Pair 2
Source: `Archive/Quarantine/LRPT_NON_DEVKIT_20260303T090515Z/WORKFLOW_SNAPSHOT_STATE.md`
Target: `gov/WORKFLOW_SNAPSHOT_STATE.md`
Decision: KEEP_TARGET

Preserved source-only fragment (identity block):
```md
repo: Larpat
branch: master
timestamp: 2026-02-20T11:05:00Z
```

Preserved source-only fragment (goal block):
```md
- sync governance baseline with SoT
- verify integrity of core artifacts
- prepare for release launch gate
```

---

## Pair 3
Source: `Archive/Quarantine/DeepArchive/LRPT_DUPLICATE_ONLY_20260303T123500Z/INTERACTION_PROTOCOL.md`
Target: `gov/INTERACTION_PROTOCOL.md`
Decision: KEEP_TARGET

Preserved source-only fragment marker:
```md
(legacy references to ROADMAP_MAP.md)
```

---

## Pair 4
Source: `Archive/Quarantine/DeepArchive/LRPT_DUPLICATE_ONLY_20260303T123500Z/TASK_MAP.md`
Target: `VLRM/map/TASK_MAP.md`
Decision: KEEP_TARGET

Preserved source-only fragment marker:
```md
t110: The Great Cleansing — ACTIVE
t111: VAVIMA Activation — PENDING
```
