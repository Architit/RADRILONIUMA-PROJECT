from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]


def _exists_any(*candidates: str) -> bool:
    return any((REPO_ROOT / c).exists() for c in candidates)


def test_core_governance_artifacts_present():
    required = {
        "INTERACTION_PROTOCOL": ["INTERACTION_PROTOCOL.md", "protocol/INTERACTION_PROTOCOL.md", "gov/INTERACTION_PROTOCOL.md"],
        "ROADMAP": ["ROADMAP.md"],
        "DEV_LOGS": ["DEV_LOGS.md", "gov/DEV_LOGS.md"],
        "WORKFLOW_SNAPSHOT_STATE": ["WORKFLOW_SNAPSHOT_STATE.md", "gov/WORKFLOW_SNAPSHOT_STATE.md"],
        "SYSTEM_STATE": [
            "SYSTEM_STATE.md",
            "agents/test-agent/SYSTEM_STATE.md",
            "agents/operator-agent/SYSTEM_STATE.md",
            "ARCHIVE_LRPT_MONOLITH_20260219/system/SYSTEM_STATE.md",
        ],
        "REPO_MANIFEST": ["REPO_MANIFEST.yaml"],
        "GOV_STATUS": ["GOV_STATUS.md", "gov/GOV_STATUS.md"],
    }
    missing = [key for key, paths in required.items() if not _exists_any(*paths)]
    assert not missing, f"missing required artifacts: {missing}"


def test_protocol_sync_marker_in_roadmap_and_logs():
    roadmap = (REPO_ROOT / "ROADMAP.md").read_text(encoding="utf-8")
    dev_logs_path = REPO_ROOT / "DEV_LOGS.md"
    if not dev_logs_path.exists():
        dev_logs_path = REPO_ROOT / "gov" / "DEV_LOGS.md"
    dev_logs = dev_logs_path.read_text(encoding="utf-8")
    assert "protocol-sync-header-v1" in roadmap
    assert (
        "protocol sync header rolled out" in dev_logs
        or "Physical space for RADRILONIUMA" in dev_logs
    )


def test_task_spec_template_v1_1_contract_markers():
    template = (REPO_ROOT / "devkit" / "task_spec_template.yaml").read_text(encoding="utf-8")
    required_markers = [
        "spec_version: \"1.1\"",
        "derivation_only: true",
        "patch_sha256:",
        "timeout_ms:",
        "max_output_tokens:",
        "fail_fast:",
    ]
    missing = [marker for marker in required_markers if marker not in template]
    assert not missing, f"missing task spec contract markers: {missing}"


def test_task_spec_validator_contract_fail_fast_error_codes():
    contract_path = REPO_ROOT / "contract" / "TASK_SPEC_VALIDATOR_CONTRACT_V1.md"
    assert contract_path.exists(), "missing TASK_SPEC_VALIDATOR_CONTRACT_V1.md"
    content = contract_path.read_text(encoding="utf-8")
    required_markers = [
        "Task Spec",
        "fail-fast",
        "error_code",
        "INTEGRITY_MISMATCH",
        "PRECONDITION_FAILED",
    ]
    missing = [marker for marker in required_markers if marker not in content]
    assert not missing, f"missing validator contract markers: {missing}"
