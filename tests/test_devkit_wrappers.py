from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]


def test_shell_preflight_wrapper_contract():
    wrapper = (REPO_ROOT / "LRPT" / "shell_preflight.sh").read_text(encoding="utf-8")
    assert "set -euo pipefail" in wrapper
    assert "shell_preflight_check.py" in wrapper
    assert 'exec python3 "$ROOT_DIR/LRPT/shell_preflight_check.py" "$@"' in wrapper


def test_patch_sh_contract_surface():
    patch_sh = (REPO_ROOT / "LRPT" / "patch.sh").read_text(encoding="utf-8")
    assert "DevKit patch helper." in patch_sh
    assert "cat change.patch | LRPT/patch.sh" in patch_sh
    assert "LRPT/patch.sh --file <path>" in patch_sh
    assert "git apply --index --3way" in patch_sh
