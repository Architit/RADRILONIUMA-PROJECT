# INTERNAL KEY PROTOCOL 3+4 — SYNC + VERIFY

mode: lifeflowstream
security_model: zero trust
scope: local internal systems only

## Purpose
- Synchronize key state across internal gateways/channels/flows.
- Verify that only authorized identities can pass.

## 3) Synchronization
1. Distribute current manifest:
- publish signed rotation manifest to all internal nodes.

2. State convergence:
- each node applies latest key versions only.
- reject unsigned or stale manifests.

3. Gateway/channel alignment:
- ensure gateway ACLs reference only active key versions.
- ensure inter-channel trust maps are version-consistent.

4. Drift detection:
- flag mismatched versions, unknown key IDs, unsigned policy.

## 4) Verification
1. Positive tests:
- authorized identity succeeds on allowed channels/flows.

2. Negative tests:
- revoked key denied.
- expired key denied.
- unauthorized identity denied.
- cross-channel privilege escalation denied.

3. MFA checks (admin paths):
- privileged operations require MFA-confirmed actor.

4. Audit closure:
- record test matrix and final status (`GREEN`/`YELLOW`/`RED`).
- if `YELLOW/RED`: open heal loop and block promotion.

## Control Matrix (minimum)
- `GATE_AUTH`: gateway auth success only for active keys.
- `CHAN_BOUNDARY`: no unauthorized lateral channel movement.
- `FLOW_POLICY`: flow-level allowlist enforcement.
- `KEY_VERSION`: node key version equals manifest.
- `MFA_ADMIN`: admin path guarded by MFA.
- `LOG_INTEGRITY`: audit logs immutable and complete.
