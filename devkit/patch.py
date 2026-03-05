#!/usr/bin/env python3
from __future__ import annotations

import runpy
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TARGET = ROOT / "LRPT" / "patch.py"
runpy.run_path(str(TARGET), run_name="__main__")
