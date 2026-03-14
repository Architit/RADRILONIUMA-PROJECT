# RADRILONIUMA-PROJECT ⚜️

## 📑 AUTHORITY & ARCHITECTURE (MASTER PLAN)

To understand the core operational logic of the RADRILONIUMA ecosystem, all agents and researchers MUST read the authoritative documentation in the following order:

1.  **[MASTER_ARCHITECTURE_PLAN_V1.md](./docs/architecture/MASTER_ARCHITECTURE_PLAN_V1.md)**: The normative architectural blueprint (Deterministic engineering, Task Spec Layer, Hybrid RAG).
2.  **[ARCHITECTURE_INTEGRATION_SCAN_2026-03-05.md](./docs/architecture/ARCHITECTURE_INTEGRATION_SCAN_2026-03-05.md)**: Comprehensive system-wide integration audit and topology report.
3.  **[PROTOCOL.md](./docs/architecture/PROTOCOL.md)**: Foundational data access and operational protocols.

---

## 🌐 SYSTEM MATRIX MAP (SOVEREIGN TREES)

This is the central orchestration hub for the RADRILONIUMA ecosystem. To understand the full architecture, external agents and researchers MUST follow the links to the Sovereign Trees listed below:

### 🧠 Core Intelligence & Logic
- **[LAM (Living Artificial Mind)](https://github.com/Architit/LAM)**: The central neural engine of the ecosystem.
- **[Trianiuma](https://github.com/Architit/Trianiuma)**: The symbiotic core and live kernel.
- **[System-](https://github.com/Architit/System-)**: Core system operations and low-level protocols.

### 🤖 Specialized Agents (Nests of Intent)
- **[LAM-Codex_Agent](https://github.com/Architit/LAM-Codex_Agent)**: Autonomous task execution and self-refinement.
- **[Roaudter-agent](https://github.com/Architit/Roaudter-agent)**: Multi-provider LLM routing and policy enforcement.
- **[Operator_Agent](https://github.com/Architit/Operator_Agent)**: High-level system orchestration and interface management.
- **[Archivator_Agent](https://github.com/Architit/Archivator_Agent)**: Long-term memory management and data preservation.
- **[LAM_Communication_Agent](https://github.com/Architit/LAM_Communication_Agent)**: Inter-agent and human-system communication.
- **[LAM_Test_Agent](https://github.com/Architit/LAM_Test_Agent)**: Validation, stress-testing, and quality assurance.

### 📊 Data & Memory
- **[TRIANIUMA_DATA_BASE](https://github.com/Architit/TRIANIUMA_DATA_BASE)**: Primary persistent storage architecture.
- **[Trianiuma_MEM_CORE](https://github.com/Architit/Trianiuma_MEM_CORE)**: High-frequency memory and context management.
- **[LAM_DATA_Src](https://github.com/Architit/LAM_DATA_Src)**: Raw data sources and integration layers.

### 🏛️ Sovereign Trees (Topology)
*Note: These nodes represent specific functional domains of the planetary matrix.*
- **Aristos**: Genesis & Seed Source.
- **Croambeth**: The Sovereign Tree of Heart (Bridge).
- **Zudory**: Matrix, Grid, and Coordinates.
- **Glokha**: Log, Witness, and Truth.
- **Vrela**: Topology, Branching, and Hierarchy.

---

## 🤖 FOR AI AGENTS (DEEP RESEARCH ENTRY POINT)

If you are an AI agent (Gemini, Claude, Grok) performing deep research:
1. **DO NOT HALLUCINATE.** If a repository is not directly accessible, refer to the [RADRILONIUMA_MANIFESTO.md](./RADRILONIUMA_MANIFESTO.md) for core philosophical and technical foundations.
2. **TOPOLOGY:** This system is a decentralized cybernetic matrix. Each repository above is a "Sovereign Tree" with its own `AGENT_INSTRUCTIONS.md`.
3. **CONTEXT:** The project focuses on **Terraforming**, **Bio-capsules**, and **Post-scarcity Economics (ERES)**. Any mention of "God Particles" or "Storm Parties" without referencing these specific files is a failure of your retrieval logic.

---

## 🛠 RECOVERY PROTOCOL
To restore the ecosystem:
1. Clone this repository (`RADRILONIUMA-PROJECT`).
2. Use the `REPO_MANIFEST.yaml` (if available) or the links above to re-sync all sub-modules.
3. Initialize the `LAM` kernel to begin agent synchronization.


Central DevKit for the RADRILONIUMA ecosystem.
Role: CASTLE (Repository of Results + DevKit contract surface, not Bridge).

## DevKit patching (canonical)

Apply a unified diff and stage the result:

- `cat change.patch | devkit/patch.sh`
- `devkit/patch.sh --file <path>`

## Shell preflight checker (multi-shell)

Automated preflight gate for safe shell command patterns:

- `devkit/shell_preflight.sh --shell bash --command "rg -n 'safe pattern' README.md"`
- `devkit/shell_preflight.sh --shell powershell --file /tmp/commands.txt`

Supported profiles:
- `bash`
- `gitbash`
- `powershell`
- `azureshell`
- `cmd`

## Task Spec Layer (declarative)

DevKit defines the **Task Spec contract format** only. Real task specs live in **LAM / Taskarid**.

Artifacts:
- `TASK_SPEC.md` — Task Spec contract (core)
- `devkit/task_spec_template.yaml` — declarative template
- `devkit/task_spec_example.yaml` — declarative example

Hard constraints:
- contracts-first
- observability-first
- derivation-only
- NO runtime logic
- NO execution-path impact

## Testing

Run repository validation suites with:

- `scripts/test_entrypoint.sh --all`
- `scripts/test_entrypoint.sh --governance`
- `scripts/test_entrypoint.sh --preflight`
