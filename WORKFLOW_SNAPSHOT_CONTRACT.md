# Phase 4.B — Workflow Snapshot (Export/Import) Contract

This document defines a **repo-native workflow snapshot** used to restore development context across **session restarts**.

Hard constraints:
- contracts-first
- observability-first
- derivation-only
- NO runtime logic
- NO execution-path impact

This is a declarative contract. No automation is introduced.

---

## 1. Purpose

`WORKFLOW_SNAPSHOT.md` is the **single canonical snapshot artifact** for:
- exporting the current work context at the end of a chat/session,
- importing that context in a new chat using `ssn rstrt`.

This prevents “context loss” and removes reliance on chat history.

---

## 2. Two-phase rule for `ssn rstrt`

`ssn rstrt` MUST be treated as a two-phase operation:

### A) Snapshot Export (in the current chat, before leaving)
- update `WORKFLOW_SNAPSHOT.md`
- ensure repository is clean or explicitly describe local state
- ensure governance is up to date

### B) Snapshot Import (in the new chat)
- read `WORKFLOW_SNAPSHOT.md`
- run read-only context sync:
  - `pwd`
  - `git status -sb`
  - `git log -n 12 --oneline`
- resume at the declared phase/podphase

No environment recovery is performed (that is `cld rstrt` only).

---

## 3. Snapshot content (required fields)

A snapshot MUST contain:

### Identity
- Repository
- Branch
- Timestamp (ISO-8601, UTC recommended)

### Current work pointer
- Current Phase / subphase
- Current goal (1–3 bullets)
- Active constraints (hard)

### Completion ledger
- Completed phases (bullet list)
- Last commits (at least 6, hash + subject)

### Working tree state
- `git status -sb` output
- Any local modifications explicitly listed (should be none)

### References (normative docs)
- INTERACTION_PROTOCOL.md
- ROADMAP.md
- DEV_LOGS.md

---

## 4. Template (recommended)

```text
# WORKFLOW SNAPSHOT

## Identity
repo: <name>
branch: <name>
timestamp: <iso-8601>

## Current pointer
phase: <Phase X.Y.Z>
goal:
- ...
constraints:
- ...

## Completed
- ...

## Recent commits
- <hash> <subject>
- ...

## Git status
<paste `git status -sb`>

## Notes
- ...
5. Non-goals

This contract MUST NOT:

introduce scripts or commands that auto-update snapshots,

introduce CI enforcement,

introduce runtime hooks,

modify execution paths.

