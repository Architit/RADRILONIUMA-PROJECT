from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]


def test_core_governance_artifacts_present():
    required = [
        "INTERACTION_PROTOCOL.md",
        "ROADMAP.md",
        "DEV_LOGS.md",
        "WORKFLOW_SNAPSHOT_STATE.md",
        "SYSTEM_STATE.md",
        "REPO_MANIFEST.yaml",
        "GOV_STATUS.md",
    ]
    missing = [name for name in required if not (REPO_ROOT / name).exists()]
    assert not missing, f"missing required artifacts: {missing}"


def test_protocol_sync_marker_in_roadmap_and_logs():
    roadmap = (REPO_ROOT / "ROADMAP.md").read_text(encoding="utf-8")
    dev_logs = (REPO_ROOT / "DEV_LOGS.md").read_text(encoding="utf-8")
    assert "protocol-sync-header-v1" in roadmap
    assert "protocol sync header rolled out" in dev_logs
