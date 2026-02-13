# INTERNAL KEY PROTOCOL 2 — ROTATION (UPDATE)

mode: lifeflowstream
security_model: zero trust
scope: local internal systems only

## Purpose
- Replace revoked/old keys with new controlled credentials.
- Rebuild trusted gateway/channel/flow identity path.

## Procedure
1. Generate new credentials:
- create new keys/certs with least privilege.
- set strict TTL and explicit scope (system, gateway, channel, flow).

2. Bind identity:
- bind each key to named owner/service identity.
- require MFA-backed admin approval for privileged bindings.

3. Dual-window rollout:
- stage new keys in disabled state.
- activate per channel in controlled batches.
- keep overlap window minimal.

4. Remove old material:
- hard-disable superseded keys immediately after cutover.
- purge local secret caches and stale env values.

5. Zero-trust policy refresh:
- enforce explicit allow per gateway/channel/flow.
- deny any path without mapped identity and valid key version.

## Outputs
- Rotation manifest (key_id, owner, scope, version, activated_at, expires_at).
- Cutover report per gateway/channel/flow.
- Superseded key disposal report.
