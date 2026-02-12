# DEV_MAP — INTERACTION_PROTOCOL Refactor Program

## Scope
Full structural refactor of INTERACTION_PROTOCOL.md:
Modules → Modes → Phases → Stages → Steps → Command Contracts.
Primary focus:
- ssn rstrt
- cld rstrt
- Phase alignment gates (fix Phase 2 / Stage C/3 sync issue)

Non-goal:
- Ecosystem evolution roadmap (belongs to ROADMAP.md layer)

---

# WORK PROGRAM (iterative)

## A) Structural Normalization
A1. Introduce module architecture (M0–M5)
A2. Unify terminology (Phase/Stage/Step)
A3. Remove ambiguity in STOP rules

Deliverable: contradiction-free document skeleton.

---

## B) Output Modes Specification
B1. Define Mode N (Normal)
B2. Define Mode R (Recovery — strict 2-line format)
B3. Define deterministic mode switching

Deliverable: explicit I/O contract layer.

---

## C) ssn rstrt Full Specification
C1. Deterministic phase mapping (ACTIVE vs NEW)
C2. Finite-state machine definition
C3. Explicit STOP gates
C4. Handoff gate definition

Deliverable: contradiction-free Session Restart protocol.

---

## D) cld rstrt Full Specification
D1. Environment sync layer
D2. SS-layer verification
D3. Minimal recovery constraints
D4. Deterministic phase alignment

Deliverable: Cold Restart protocol with no semantic gaps.

---

## E) Phase Alignment Gate (Fix C/3)
E1. Define Phase Context object
E2. Define allowed phase-set after restart
E3. Define snapshot alignment rule
E4. Define conflict resolution rule

Deliverable: synchronized restart → execution transition.

---

## Governance
Changes to INTERACTION_PROTOCOL.md follow:
DEV_LOGS → ROADMAP → INTERACTION_PROTOCOL → commit + push


---

## F) Index Sync Hardening (Process Correction)

Problem:
`git diff --stat` does not show untracked files, causing false "no changes" perception.

Solution:
F1. Mandatory `git status -sb` before any Safety Check.
F2. If `??` present → must stage explicitly before diff.
F3. Safety Check sequence becomes:
    - git status -sb
    - git add <file> (if needed)
    - git diff --cached --stat
    - key file diff
F4. No commit allowed without visible staged diff.

Deliverable: Execution Cycle updated to remove index visibility gap.

