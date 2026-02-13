# PUBLIC SHARE PROTOCOL

mode: lifeflowstream
security_model: zero trust
scope: outbound/public publication

## Goal
- Prevent leakage of secrets/PII/internal-only data in public shares.

## Classification Gate
- Allow: public docs, sanitized metrics, non-sensitive artifacts.
- Deny: secrets, keys, tokens, credentials, raw PII, internal auth material.

## Mandatory Checks Before Share
1. Secret scan (tokens/passwords/keys patterns).
2. PII scan (emails, IDs, phone, payment identifiers).
3. Ownership check and publication approval.
4. Hash and version stamp of shared package.

## Release Decision
- GREEN: all checks pass -> publish.
- YELLOW: uncertain findings -> manual security review.
- RED: sensitive leak risk -> block publication.

## Audit
- Keep share manifest with approver IDs and timestamp.
