# VAVIMA NEXUS CORE V1

contract_type: vavima_nexus_core
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:23:20Z

## Purpose
- Define VAVIMA internal orchestration core for intent decomposition.
- Map high-level intents to atomic TASK_SPEC units for TSPT routing.

## Constraints
- No direct runtime execution.
- Output artifacts only: TASK_SPEC yaml, patch metadata, routing notes.
- Critical intents require Council + Sentinel gates before dispatch.
