import importlib.util
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]
MODULE_PATH = REPO_ROOT / "devkit" / "shell_preflight_check.py"

_SPEC = importlib.util.spec_from_file_location("shell_preflight_check", MODULE_PATH)
assert _SPEC is not None and _SPEC.loader is not None
MODULE = importlib.util.module_from_spec(_SPEC)
sys.modules[_SPEC.name] = MODULE
_SPEC.loader.exec_module(MODULE)


def test_has_unbalanced_quotes_detection():
    assert MODULE.has_unbalanced_quotes("echo 'abc") is True
    assert MODULE.has_unbalanced_quotes('echo "abc') is True
    assert MODULE.has_unbalanced_quotes("echo 'abc'") is False
    assert MODULE.has_unbalanced_quotes('echo "abc"') is False


def test_bash_like_flags_backtick_as_error():
    findings = MODULE.bash_like_findings("bash", "echo `uname`", 1)
    assert any(f.rule_id == "PF_BACKTICK_SUBSTITUTION_RISK" for f in findings)
    assert any(f.severity == "ERROR" for f in findings)


def test_powershell_flags_var_colon_without_braces():
    findings = MODULE.powershell_findings('$me:(OI)(CI)(RX)', 1)
    assert any(f.rule_id == "PF_PWSH_VAR_COLON_BRACES_REQUIRED" for f in findings)


def test_run_checks_warns_on_command_substitution():
    findings = MODULE.run_checks("bash", ["echo $(date)"])
    assert any(f.rule_id == "PF_COMMAND_SUBSTITUTION_PRESENT" for f in findings)
