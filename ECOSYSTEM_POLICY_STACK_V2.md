# ECOSYSTEM POLICY STACK V2

policy_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: RADRILONIUMA ecosystem
effective_utc: 2026-02-16T05:42:10Z

## Purpose
- Establish a single policy architecture for governance, security, evidence, data lifecycle, and publication controls.
- Remove policy ambiguity between documents by defining canonical owners, precedence, and conflict resolution.

## Policy Layers
1) Governance Core
- Source: `INTERACTION_PROTOCOL.md`
- Scope: execution rules, write order, drift/heartbeat gates, phase gates.
- Precedence: highest.

2) Evidence and Audit
- Source: `EVIDENCE_POLICY.md`
- Scope: acceptable evidence, reproducibility, evidence quality.
- Precedence: required for every claim and state change.

3) Identity and Key Security
- Sources:
  - `INTERNAL_KEY_ECOSYSTEM_COVERAGE_MATRIX.md`
  - `INTERNAL_KEY_IDENTITY_RUNTIME_MAPPING_CONTRACT.md`
  - `INTERNAL_KEY_PROTOCOL_1_ZEROIZATION.md`
  - `INTERNAL_KEY_PROTOCOL_2_ROTATION.md`
  - `INTERNAL_KEY_PROTOCOL_3_SYNC_4_VERIFY.md`
- Scope: identity/path/gateway tuples, key lifecycle, access controls.

4) Data Lifecycle
- Source: `DATA_RETENTION_AND_SECURE_ERASURE_POLICY.md`
- Scope: retention classes, legal basis, secure erasure gating, verification.

5) Outbound Disclosure
- Source: `PUBLIC_SHARE_PROTOCOL.md`
- Scope: publication safety gates, PII/secret prevention, release decisions.

## Global Policy Invariants
- No policy may override M0 hard constraints.
- Every policy decision requires:
  - UTC timestamp,
  - evidence pointer (`gov/asr/sessions/*`),
  - SoT synchronization (`DEV_LOGS`, `ROADMAP`, `GOV_STATUS`, `WORKFLOW_SNAPSHOT_STATE`, `TASK_MAP`, `gov/asr/INDEX.md`).
- If policy conflict appears:
  - apply strictest policy,
  - classify as `POLICY_CONFLICT`,
  - block high-impact operation until explicit decision contract is recorded.

## Policy Decision Classes
- `ALLOW`: all mandatory checks passed.
- `ALLOW_WITH_REVIEW`: non-critical uncertainty exists, manual review required.
- `DENY`: policy violation or missing critical evidence.
- `BLOCKED_PENDING_POLICY_DECISION`: policy conflict or undefined condition.

## Escalation Matrix
- GREEN: operation allowed by deterministic checks.
- YELLOW: operation paused for manual review.
- RED: operation denied and incident record required.

## Change Management
- Any policy change must include:
  - scope statement,
  - backward compatibility note,
  - risk note (if behavior changes),
  - ASR registration and index link.
- Policy updates are non-retroactive unless explicitly declared.

## Binding
- This document is the canonical policy topology map.
- Detailed policy behavior remains in referenced policy artifacts.
