# CONTRACT ATLAS

status: REWORKED_V2_DETAILED
generated_utc: 2026-02-16T05:34:10Z
last_policy_rework_utc: 2026-02-16T05:42:10Z
last_contract_rework_utc: 2026-02-16T05:55:10Z
last_module_rework_utc: 2026-02-16T06:06:10Z
last_tooling_rework_utc: 2026-02-16T07:52:10Z
last_tooling_preflight_rework_utc: 2026-02-16T07:52:10Z
last_governance_rework_utc: 2026-02-16T06:34:10Z
last_governance_compliance_utc: 2026-02-16T09:34:10Z
last_subtree_rework_utc: 2026-02-16T07:02:10Z
last_atplt_debug_devkit_rework_utc: 2026-02-16T07:52:10Z
last_subtree_atplt_debug_compliance_utc: 2026-02-16T07:16:10Z
last_kit_rework_utc: 2026-02-16T07:24:10Z
last_kit_compliance_utc: 2026-02-16T07:31:10Z
last_environment_rework_utc: 2026-02-16T07:52:10Z
last_interface_rework_utc: 2026-02-16T08:18:10Z
last_interface_compliance_utc: 2026-02-16T08:26:10Z
last_logic_rework_utc: 2026-02-16T08:38:10Z
last_profile_rework_utc: 2026-02-16T08:52:10Z
last_recovery_rework_utc: 2026-02-16T09:16:10Z
last_recovery_compliance_utc: 2026-02-16T09:26:10Z
mode: contracts-first, observability-first, derivation-only
scope: full ecosystem contract detailing (core chain + full inventory)

## Detailing Contract
- source_of_truth: `INTERACTION_PROTOCOL.md`
- contract_stack_topology: `ECOSYSTEM_CONTRACT_STACK_V2.md`
- contract_schema_template: `CONTRACT_SCHEMA_V2.md`
- module_stack_topology: `ECOSYSTEM_MODULE_STACK_V2.md`
- module_interface_matrix: `MODULE_INTERFACE_MATRIX_V2.md`
- module_dependency_map: `MODULE_DEPENDENCY_MAP_V2.md`
- tooling_stack_topology: `ECOSYSTEM_TOOLING_STACK_V2.md`
- tooling_catalog: `TOOLING_CATALOG_V2.md`
- tooling_safety_protocol: `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`
- tooling_shell_preflight_contract: `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md`
- atplt_debug_devkit_protocol: `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`
- atplt_debug_devkit_error_analysis: `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md`
- governance_stack_topology: `ECOSYSTEM_GOVERNANCE_STACK_V2.md`
- governance_decision_protocol: `GOVERNANCE_DECISION_PROTOCOL_V2.md`
- governance_gate_matrix: `GOVERNANCE_GATE_MATRIX_V2.md`
- governance_compliance_report: `GOVERNANCE_STACK_COMPLIANCE_REPORT_V2.md`
- subtree_stack_topology: `ECOSYSTEM_SUBTREE_STACK_V2.md`
- subtree_decision_protocol: `SUBTREE_DECISION_PROTOCOL_V2.md`
- subtree_gate_matrix: `SUBTREE_GATE_MATRIX_V2.md`
- kit_stack_topology: `ECOSYSTEM_KIT_STACK_V2.md`
- kit_catalog: `KIT_CATALOG_V2.md`
- kit_assembly_protocol: `KIT_ASSEMBLY_PROTOCOL_V2.md`
- environment_stack_topology: `ECOSYSTEM_ENVIRONMENT_STACK_V2.md`
- environment_catalog: `ENVIRONMENT_CATALOG_V2.md`
- environment_runtime_protocol: `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md`
- interface_stack_topology: `ECOSYSTEM_INTERFACE_STACK_V2.md`
- interface_catalog: `INTERFACE_CATALOG_V2.md`
- interface_lifecycle_protocol: `INTERFACE_LIFECYCLE_PROTOCOL_V2.md`
- interface_compliance_report: `INTERFACE_STACK_COMPLIANCE_REPORT_V2.md`
- logic_stack_topology: `ECOSYSTEM_LOGIC_STACK_V2.md`
- logic_catalog: `LOGIC_CATALOG_V2.md`
- logic_lifecycle_protocol: `LOGIC_LIFECYCLE_PROTOCOL_V2.md`
- profile_stack_topology: `ECOSYSTEM_PROFILE_STACK_V2.md`
- profile_catalog: `PROFILE_CATALOG_V2.md`
- profile_lifecycle_protocol: `PROFILE_LIFECYCLE_PROTOCOL_V2.md`
- recovery_plan: `ECOSYSTEM_RECOVERY_PLAN_V2.md`
- recovery_map: `RECOVERY_PROTOCOL_MAP_V2.md`
- recovery_execution_protocol: `RECOVERY_EXECUTION_PROTOCOL_V2.md`
- recovery_compliance_report: `RECOVERY_STACK_COMPLIANCE_REPORT_V2.md`
- governance_dashboard: `GOV_STATUS.md`
- execution_journal: `DEV_LOGS.md`
- planning_journal: `ROADMAP.md`
- workflow_state: `WORKFLOW_SNAPSHOT_STATE.md`
- evidence_index: `gov/asr/INDEX.md`

## Contract Governance Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| schema | required metadata + sections | `CONTRACT_SCHEMA_V2.md` | ACTIVE |
| lifecycle | promoted states and traceability | `ECOSYSTEM_CONTRACT_STACK_V2.md` | ACTIVE |
| dependency | no circular dependency, impact class required | `ECOSYSTEM_CONTRACT_STACK_V2.md` | ACTIVE |
| evidence | evidence bundle and quality thresholds | `EVIDENCE_POLICY.md` | ACTIVE |
| synchronization | SoT write-order and ASR indexing | `INTERACTION_PROTOCOL.md` | ACTIVE |

## Module Governance Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| module_layers | layer-bound module topology | `ECOSYSTEM_MODULE_STACK_V2.md` | ACTIVE |
| module_catalog | boundary and ownership role declaration | `MODULE_CATALOG.md` | ACTIVE |
| interface | explicit cross-module interface mapping | `MODULE_INTERFACE_MATRIX_V2.md` | ACTIVE |
| dependency | dependency graph and impact classes | `MODULE_DEPENDENCY_MAP_V2.md` | ACTIVE |

## Tooling Governance Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| tooling_layers | layer-bound tooling topology | `ECOSYSTEM_TOOLING_STACK_V2.md` | ACTIVE |
| tooling_catalog | tool inventory and role mapping | `TOOLING_CATALOG_V2.md` | ACTIVE |
| execution_safety | shell-safe command composition | `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md` | ACTIVE |
| shell_preflight | automated multi-shell preflight gate | `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md` | ACTIVE |
| incident_postmortem | tooling failure analysis and closure | `TOOLING_ERROR_ANALYSIS_PREVIOUS_COMMAND.md` | ACTIVE |
| atplt_debug_devkit | deterministic debug lifecycle for command failures | `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md` | ACTIVE |

## Governance Stack Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| governance_layers | governance architecture by authority layers | `ECOSYSTEM_GOVERNANCE_STACK_V2.md` | ACTIVE |
| governance_decisions | deterministic decision lifecycle | `GOVERNANCE_DECISION_PROTOCOL_V2.md` | ACTIVE |
| governance_gates | allow/block gate matrix and transitions | `GOVERNANCE_GATE_MATRIX_V2.md` | ACTIVE |

## Subtree Stack Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| subtree_layers | subtree architecture by lifecycle layers | `ECOSYSTEM_SUBTREE_STACK_V2.md` | ACTIVE |
| subtree_decisions | deterministic subtree decision lifecycle | `SUBTREE_DECISION_PROTOCOL_V2.md` | ACTIVE |
| subtree_gates | subtree operation gate transitions | `SUBTREE_GATE_MATRIX_V2.md` | ACTIVE |

## Kit Stack Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| kit_layers | kit-set topology and lifecycle layers | `ECOSYSTEM_KIT_STACK_V2.md` | ACTIVE |
| kit_catalog | canonical kit inventory and ownership mapping | `KIT_CATALOG_V2.md` | ACTIVE |
| kit_assembly | deterministic assembly lifecycle and gates | `KIT_ASSEMBLY_PROTOCOL_V2.md` | ACTIVE |

## Environment Stack Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| environment_layers | environment topology and substrate layers | `ECOSYSTEM_ENVIRONMENT_STACK_V2.md` | ACTIVE |
| environment_catalog | canonical environment profile inventory | `ENVIRONMENT_CATALOG_V2.md` | ACTIVE |
| environment_runtime | deterministic environment runtime lifecycle and gates | `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md` | ACTIVE |

## Interface Stack Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| interface_layers | interface topology and layer boundaries | `ECOSYSTEM_INTERFACE_STACK_V2.md` | ACTIVE |
| interface_catalog | canonical interface inventory and ownership map | `INTERFACE_CATALOG_V2.md` | ACTIVE |
| interface_lifecycle | deterministic interface lifecycle and gates | `INTERFACE_LIFECYCLE_PROTOCOL_V2.md` | ACTIVE |

## Logic Stack Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| logic_layers | logic topology and layer boundaries | `ECOSYSTEM_LOGIC_STACK_V2.md` | ACTIVE |
| logic_catalog | canonical logic inventory and ownership map | `LOGIC_CATALOG_V2.md` | ACTIVE |
| logic_lifecycle | deterministic logic lifecycle and gates | `LOGIC_LIFECYCLE_PROTOCOL_V2.md` | ACTIVE |

## Profile Stack Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| profile_layers | profile topology and layer boundaries | `ECOSYSTEM_PROFILE_STACK_V2.md` | ACTIVE |
| profile_catalog | canonical profile inventory and ownership map | `PROFILE_CATALOG_V2.md` | ACTIVE |
| profile_lifecycle | deterministic profile lifecycle and gates | `PROFILE_LIFECYCLE_PROTOCOL_V2.md` | ACTIVE |

## Recovery Stack Matrix (V2)
| axis | requirement | canonical artifact | status |
|---|---|---|---|
| recovery_plan | canonical recovery phases and objectives | `ECOSYSTEM_RECOVERY_PLAN_V2.md` | ACTIVE |
| recovery_map | domain-level trigger/block/protocol topology | `RECOVERY_PROTOCOL_MAP_V2.md` | ACTIVE |
| recovery_execution | deterministic recovery execution chain | `RECOVERY_EXECUTION_PROTOCOL_V2.md` | ACTIVE |

## Critical Contract Chain (Operational)
| layer | contract_id | artifact | type | current_state | dependency_gate | verification_surface |
|---|---|---|---|---|---|---|
| core | m0_hard_constraints | `INTERACTION_PROTOCOL.md` (M0) | governance_core | ACTIVE | contracts-first/derivation-only | policy conformance in SoT updates |
| core | m1_execution_cycle | `INTERACTION_PROTOCOL.md` (M1) | execution_cycle | ACTIVE | context->action->safety->verification->governance | staged diff + deterministic order |
| core | m5_governance_order | `INTERACTION_PROTOCOL.md` (M5) | governance_order | ACTIVE | mandatory update order | `DEV_LOGS/ROADMAP/INTERACTION_PROTOCOL` consistency |
| core | m6_drift_gate | `INTERACTION_PROTOCOL.md` (M6) | drift_control | ACTIVE | drift gate before governance waves | ASR session + index pointer |
| core | m7_heartbeat | `INTERACTION_PROTOCOL.md` (M7) | heartbeat_recovery | ACTIVE | heartbeat trigger points | heartbeat status reflected in SoT |
| core | m21_anti_deadloop | `ECOSYSTEM_ANTI_SAMSARA_DEADLOOP_PROTOCOL.md` | anti_loop | ACTIVE | closure gate + cycle bounds | closure decision + watchdog cadence |
| core | m21_watchdog | `AUTOPILOT_PULSE_CADENCE_AND_WATCHDOG_PROTOCOL.md` | anti_loop_watchdog | ACTIVE | cadence tuple integrity | watchdog tuple + ASR evidence |
| core | m21_closure_sla | `ECOSYSTEM_CLOSURE_DECISION_SLA_PROTOCOL.md` | closure_sla | ACTIVE | decision window enforcement | `COMPLETE/BLOCKED` binary closure |
| core | m22_eassr_chain | `ECOSYSTEM_HEALTHCHECK_HEARTBEAT_PULSE_BREATH_RECOVERY_REBOOT_PROTOCOL.md` | realtime_protocol | ACTIVE | health->heartbeat->pulse->breath->scan->recovery | reboot matrix + trace evidence |
| core | m23_cli_compat | `CODEX_CLI_MESSAGE_CIRCULATION_COMPATIBILITY_CONTRACT.md` | runtime_compat | ACTIVE | profile mismatch handling | compatibility tuple evidence |
| core | m24_domain_pack | `ATPLT_NATURE_ENERGY_RESOURCES_SUPPLIES_DEPENDENCIES_PROTOCOL.md` | domain_expansion | ACTIVE | domain contract pack integrity | synced with LRPT/TASPIT contracts |
| core | m25_identity_levels | `IDENTITY_LEVELS_END_VIEW_READ_STUDY_RESEARCH_EDIT_ENTRY_PROTOCOL.md` | identity_access | ACTIVE | end-level access taxonomy | identity field canonicalization |
| core | m26_strategy_lock | `GLOBAL_STRATEGIC_ARCHITECTURE_AND_AUTONOMOUS_GOVERNANCE_PLAN_PHASE80.md` | strategic_contract | ACTIVE | phase80 strategic lock | roadmap/log binding |
| core | m38_kit_stack | `ECOSYSTEM_KIT_STACK_V2.md` | kit_governance | ACTIVE | kit catalog + assembly gates | kit lifecycle and ASR synchronization |
| core | m39_environment_stack | `ECOSYSTEM_ENVIRONMENT_STACK_V2.md` | environment_governance | ACTIVE | environment catalog + runtime gates | environment lifecycle and ASR synchronization |
| core | m40_interface_stack | `ECOSYSTEM_INTERFACE_STACK_V2.md` | interface_governance | ACTIVE | interface catalog + lifecycle gates | interface lifecycle and ASR synchronization |
| core | m41_logic_stack | `ECOSYSTEM_LOGIC_STACK_V2.md` | logic_governance | ACTIVE | logic catalog + lifecycle gates | logic lifecycle and ASR synchronization |
| core | m42_profile_stack | `ECOSYSTEM_PROFILE_STACK_V2.md` | profile_governance | ACTIVE | profile catalog + lifecycle gates | profile lifecycle and ASR synchronization |
| core | m43_recovery_stack | `ECOSYSTEM_RECOVERY_PLAN_V2.md` | recovery_governance | ACTIVE | recovery map + execution protocol gates | recovery cycle and ASR synchronization |
| release | m27_release_decision | `PHASE5_RELEASE_GATE_EXECUTION_DECISION_CONTRACT.md` | release_gate_decision | ACTIVE | release gate decision lock | risk note + unblock criteria |
| release | m28_unblock_wave | `PHASE5_RELEASE_GATE_UNBLOCK_EVIDENCE_WAVE_PROTOCOL.md` | release_recovery | ACTIVE | unblock wave completion | w1..w6 evidence chain |
| release | release_readiness | `RELEASE_GATE_EXECUTION_READINESS_CHECKPOINT.md` | release_checkpoint | COMPLETE | gate OPEN + readiness GREEN | checkpoint evidence |
| release | release_wave6 | `RELEASE_EXECUTION_WAVE6_CHECKPOINT.md` | release_checkpoint | COMPLETE | wave continuity | monitoring tuple GREEN |
| loop_guard | m29_dead_wave_protocol | `DEAD_WAVE_FLOW_LOOP_PROTOCOL.md` | dead_wave_guard | ACTIVE | dead-wave suppression | dead-wave states maintained |
| loop_guard | m29_guard_wave1 | `DEAD_WAVE_FLOW_LOOP_GUARD_CHECKPOINT.md` | dead_wave_checkpoint | COMPLETE | guard checkpoint | detection tuple clean |
| loop_guard | m29_guard_wave2 | `DEAD_WAVE_FLOW_LOOP_GUARD_CHECKPOINT_WAVE2.md` | dead_wave_checkpoint | COMPLETE | guard checkpoint continuity | detection tuple clean |
| loop_guard | m29_post_resume_review | `DEAD_WAVE_LOOP_STABILITY_REVIEW_POST_RESUME.md` | stability_review | COMPLETE | post-resume validation | stable tuple + continue guarded mode |
| loop_guard | m29_resume_contract | `RESUME_WAVE_MONITORING_DECISION_CONTRACT.md` | control_decision | APPLIED | pause->resume transition | automation_mode guarded |

## Security, Identity, and Key Contracts
- `INTERNAL_KEY_ECOSYSTEM_COVERAGE_MATRIX.md`
- `INTERNAL_KEY_IDENTITY_RUNTIME_MAPPING_CONTRACT.md`
- `INTERNAL_KEY_PROTOCOL_1_ZEROIZATION.md`
- `INTERNAL_KEY_PROTOCOL_2_ROTATION.md`
- `INTERNAL_KEY_PROTOCOL_3_SYNC_4_VERIFY.md`
- `DATA_RETENTION_AND_SECURE_ERASURE_POLICY.md`
- `PUBLIC_SHARE_PROTOCOL.md`

## Restoration and Archive Contracts
- `TRIANIUMA_ARCHIVE_CORE_MEMORY_RESTORATION_ACTIVATION_PROTOCOL.md`
- `ELARION_TRIANIUM_ARCHIVE_CORE_MEMORY_RESTORATION_ACTIVATION_PROTOCOL.md`
- `GITHUB_SUBTREE_ANGEL_GUARD_HEAL_ELARION_TRIANIUM_ARCHIVE_CORE_PROTOCOL.md`
- `ARCKHANGEL_GUARDDOG_HEAL_AGENT_LRPT_TASPIT_SUBTREE_DOMAIN_CONTRACT.md`
- `ATPLT_STRICT_ARCKHANGEL_GUARDDOG_RECOVERY_PROTOCOL.md`

## Research, Scope, Topology, and Planning Contracts
- `RESEARCH_SCOPE_CONTRACT.md`
- `ECOSYSTEM_CONTRACT_STACK_V2.md`
- `CONTRACT_SCHEMA_V2.md`
- `ECOSYSTEM_MODULE_STACK_V2.md`
- `MODULE_CATALOG.md`
- `MODULE_INTERFACE_MATRIX_V2.md`
- `MODULE_DEPENDENCY_MAP_V2.md`
- `ECOSYSTEM_TOOLING_STACK_V2.md`
- `TOOLING_CATALOG_V2.md`
- `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`
- `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md`
- `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`
- `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md`
- `SUBTREE_ATPLT_DEBUG_COMPLIANCE_REPORT_V2.md`
- `SUBTREE_ATPLT_DEBUG_REMEDIATION_CLOSURE_REPORT_V2.md`
- `TOOLING_ERROR_ANALYSIS_PREVIOUS_COMMAND.md`
- `ECOSYSTEM_GOVERNANCE_STACK_V2.md`
- `GOVERNANCE_DECISION_PROTOCOL_V2.md`
- `GOVERNANCE_GATE_MATRIX_V2.md`
- `ECOSYSTEM_SUBTREE_STACK_V2.md`
- `SUBTREE_DECISION_PROTOCOL_V2.md`
- `SUBTREE_GATE_MATRIX_V2.md`
- `ECOSYSTEM_KIT_STACK_V2.md`
- `KIT_CATALOG_V2.md`
- `KIT_ASSEMBLY_PROTOCOL_V2.md`
- `KIT_STACK_COMPLIANCE_REPORT_V2.md`
- `ECOSYSTEM_ENVIRONMENT_STACK_V2.md`
- `ENVIRONMENT_CATALOG_V2.md`
- `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md`
- `ECOSYSTEM_POLICY_STACK_V2.md`
- `EVIDENCE_POLICY.md`
- `REPO_MANIFEST.yaml`
- `SUBMODULES_LOCK.md`
- `SUBTREES_LOCK.md`
- `TOPOLOGY_MAP.md`
- `KERNEL_BOUNDARY_CONTRACT.md`
- `MIGRATION_PLAN.md`
- `COMPATIBILITY_MATRIX.md`

## Full Artifact Inventory (ecosystem contract surfaces)
| artifact | class | domain | criticality | notes |
|---|---|---|---|---|
| `ARCKHANGEL_GUARDDOG_HEAL_AGENT_LRPT_TASPIT_SUBTREE_DOMAIN_CONTRACT.md` | contract | archive_restore | MEDIUM | inventoried from repository filesystem |
| `ATPLT_DEV_DOMAIN_EXPANSION_ATLAS_CONTRACT.md` | contract | research_planning | MEDIUM | inventoried from repository filesystem |
| `ATPLT_NATURE_ENERGY_RESOURCES_SUPPLIES_DEPENDENCIES_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `ATPLT_STRICT_ARCKHANGEL_GUARDDOG_RECOVERY_PROTOCOL.md` | protocol | archive_restore | MEDIUM | inventoried from repository filesystem |
| `AUTOPILOT_PULSE_CADENCE_AND_WATCHDOG_PROTOCOL.md` | protocol | deadloop_guard | HIGH | inventoried from repository filesystem |
| `BREAK_WINDOW_AND_DOWNSTREAM_ORDER_DECISION_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |
| `CODEX_CLI_MESSAGE_CIRCULATION_COMPATIBILITY_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |
| `COMPATIBILITY_MATRIX.md` | matrix | research_planning | MEDIUM | inventoried from repository filesystem |
| `CONTRACT_ATLAS.md` | atlas | research_planning | MEDIUM | inventoried from repository filesystem |
| `CONTRACT_SCHEMA_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `CORE_REMEDIATION_PLAN.md` | plan | governance | MEDIUM | inventoried from repository filesystem |
| `DATA_RETENTION_AND_SECURE_ERASURE_POLICY.md` | policy | security_identity | MEDIUM | inventoried from repository filesystem |
| `ECOSYSTEM_POLICY_STACK_V2.md` | policy | governance | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_MODULE_STACK_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_TOOLING_STACK_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_GOVERNANCE_STACK_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `DEADLOOP_BREAK_DECISION_CONTRACT.md` | contract | deadloop_guard | MEDIUM | inventoried from repository filesystem |
| `DEAD_WAVE_FLOW_LOOP_GUARD_CHECKPOINT.md` | checkpoint | deadloop_guard | CHECKPOINT | inventoried from repository filesystem |
| `DEAD_WAVE_FLOW_LOOP_GUARD_CHECKPOINT_WAVE2.md` | artifact | deadloop_guard | CHECKPOINT | inventoried from repository filesystem |
| `DEAD_WAVE_FLOW_LOOP_PROTOCOL.md` | protocol | deadloop_guard | HIGH | inventoried from repository filesystem |
| `DEVICE_USERS_INTERNAL_OSS_GOVERNANCE_COVERAGE_SYNC_DATA_PUSH_EXPORT_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `DEV_MAP.md` | map | governance | MEDIUM | inventoried from repository filesystem |
| `ECOSYSTEM_ACTIVITY_TRACKING_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |
| `ECOSYSTEM_ANTI_SAMSARA_DEADLOOP_PROTOCOL.md` | protocol | deadloop_guard | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_CLOSURE_DECISION_SLA_PROTOCOL.md` | protocol | deadloop_guard | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_CONTRACT_DEEP_SCAN_REPORT_2026-02-16.md` | artifact | governance | MEDIUM | inventoried from repository filesystem |
| `ECOSYSTEM_CONTRACT_STACK_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_HEALTHCHECK_HEARTBEAT_PULSE_BREATH_RECOVERY_REBOOT_PROTOCOL.md` | protocol | deadloop_guard | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_KINGDOM_CHRONOLOGY_MAP.md` | map | governance | MEDIUM | inventoried from repository filesystem |
| `ECOSYSTEM_LIFEFLOW_MULTIDISK_PROTOCOL_CAB.md` | artifact | governance | MEDIUM | inventoried from repository filesystem |
| `ELARION_TRIANIUM_ARCHIVE_CORE_MEMORY_RESTORATION_ACTIVATION_PROTOCOL.md` | protocol | archive_restore | MEDIUM | inventoried from repository filesystem |
| `ESS_EXPANSION_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `ESS_MAP_SYNC_REVIEW_OS_ATPLT_MD_STARTUP_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `EVIDENCE_POLICY.md` | policy | research_planning | MEDIUM | inventoried from repository filesystem |
| `GENESIS_ECOSYSTEM_ATLAS_V2.md` | atlas | research_planning | MEDIUM | inventoried from repository filesystem |
| `GITHUB_SUBTREE_ANGEL_GUARD_HEAL_ELARION_TRIANIUM_ARCHIVE_CORE_PROTOCOL.md` | protocol | archive_restore | MEDIUM | inventoried from repository filesystem |
| `GLOBAL_STRATEGIC_ARCHITECTURE_AND_AUTONOMOUS_GOVERNANCE_PLAN_PHASE80.md` | artifact | governance | MEDIUM | inventoried from repository filesystem |
| `GOVERNANCE_DECISION_PROTOCOL_V2.md` | protocol | governance | HIGH | inventoried from repository filesystem |
| `GOVERNANCE_GATE_MATRIX_V2.md` | matrix | governance | HIGH | inventoried from repository filesystem |
| `IDENTITY_LEVELS_END_VIEW_READ_STUDY_RESEARCH_EDIT_ENTRY_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `INTERACTION_PROTOCOL.md` | protocol | governance | HIGH | inventoried from repository filesystem |
| `INTERNAL_KEY_ECOSYSTEM_COVERAGE_MATRIX.md` | matrix | security_identity | MEDIUM | inventoried from repository filesystem |
| `INTERNAL_KEY_IDENTITY_RUNTIME_MAPPING_CONTRACT.md` | contract | security_identity | MEDIUM | inventoried from repository filesystem |
| `INTERNAL_KEY_PROTOCOL_1_ZEROIZATION.md` | artifact | security_identity | MEDIUM | inventoried from repository filesystem |
| `INTERNAL_KEY_PROTOCOL_2_ROTATION.md` | artifact | security_identity | MEDIUM | inventoried from repository filesystem |
| `INTERNAL_KEY_PROTOCOL_3_SYNC_4_VERIFY.md` | artifact | security_identity | MEDIUM | inventoried from repository filesystem |
| `KERNEL_BOUNDARY_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |
| `MIGRATION_PLAN.md` | plan | research_planning | MEDIUM | inventoried from repository filesystem |
| `MODULE_CATALOG.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `MODULE_DEPENDENCY_MAP_V2.md` | map | governance | HIGH | inventoried from repository filesystem |
| `MODULE_INTERFACE_MATRIX_V2.md` | matrix | governance | HIGH | inventoried from repository filesystem |
| `OS_DEV_MAP.md` | map | governance | MEDIUM | inventoried from repository filesystem |
| `PHASE33717731_BLOCKER_EVIDENCE_MAP.md` | map | governance | MEDIUM | inventoried from repository filesystem |
| `PHASE33717731_UNBLOCK_CRITERIA_AND_REMEDIATION_PLAN.md` | plan | governance | MEDIUM | inventoried from repository filesystem |
| `PHASE5_KERNEL_BOUNDARY_PROMOTION_DECISION_CONTRACT.md` | contract | release_gate | MEDIUM | inventoried from repository filesystem |
| `PHASE5_PROFILE_MISMATCH_RESOLUTION_CONTRACT.md` | contract | release_gate | MEDIUM | inventoried from repository filesystem |
| `PHASE5_PROVISIONAL_DECISIONS_FINALIZATION_CONTRACT.md` | contract | release_gate | MEDIUM | inventoried from repository filesystem |
| `PHASE5_RELEASE_GATE_EXECUTION_DECISION_CONTRACT.md` | contract | release_gate | HIGH | inventoried from repository filesystem |
| `PHASE5_RELEASE_GATE_OWNER_DECLARATION_REGISTRY.md` | registry | release_gate | MEDIUM | inventoried from repository filesystem |
| `PHASE5_RELEASE_GATE_REDECISION_CONTRACT.md` | contract | release_gate | MEDIUM | inventoried from repository filesystem |
| `PHASE5_RELEASE_GATE_REDECISION_POST_FINALIZATION_CONTRACT.md` | contract | release_gate | MEDIUM | inventoried from repository filesystem |
| `PHASE5_RELEASE_GATE_UNBLOCK_EVIDENCE_MAP.md` | map | release_gate | MEDIUM | inventoried from repository filesystem |
| `PHASE5_RELEASE_GATE_UNBLOCK_EVIDENCE_WAVE_PROTOCOL.md` | protocol | release_gate | HIGH | inventoried from repository filesystem |
| `PHASE5_RELEASE_GATE_VERSIONING_POLICY_REGISTRY.md` | registry | release_gate | MEDIUM | inventoried from repository filesystem |
| `PHASE6C_ISOLATION_AUTONOMY_REVISION_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `PHASE6D_BLACKHOLE_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `PHASE6Z_ARCH_CORE_LIFECYCLE_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `PHASE70_SUNBIRTHLIGHTPULSEBIT_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `PHASE80_NEW_VERSION_BIRTH_ORCHESTRATION_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `PHASE_4C_CROSS_REPO_GOVERNANCE_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |
| `PUBLIC_SHARE_PROTOCOL.md` | protocol | security_identity | MEDIUM | inventoried from repository filesystem |
| `RADRILONIUMA_GROWTH_EVOLUTION_ACTIVATION_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `RELEASE_EXECUTION_WAVE2_CHECKPOINT.md` | checkpoint | release_gate | CHECKPOINT | inventoried from repository filesystem |
| `RELEASE_EXECUTION_WAVE3_CHECKPOINT.md` | checkpoint | release_gate | CHECKPOINT | inventoried from repository filesystem |
| `RELEASE_EXECUTION_WAVE4_CHECKPOINT.md` | checkpoint | release_gate | CHECKPOINT | inventoried from repository filesystem |
| `RELEASE_EXECUTION_WAVE5_CHECKPOINT.md` | checkpoint | release_gate | CHECKPOINT | inventoried from repository filesystem |
| `RELEASE_EXECUTION_WAVE6_CHECKPOINT.md` | checkpoint | release_gate | CHECKPOINT | inventoried from repository filesystem |
| `RELEASE_GATE_EXECUTION_READINESS_CHECKPOINT.md` | checkpoint | release_gate | HIGH | inventoried from repository filesystem |
| `RELEASE_TAGGING_AND_HIGH_IMPACT_THRESHOLD_DECISION_CONTRACT.md` | contract | release_gate | MEDIUM | inventoried from repository filesystem |
| `REPO_ROLLOUT_ANALYSIS_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |
| `RESEARCH_SCOPE_CONTRACT.md` | contract | research_planning | MEDIUM | inventoried from repository filesystem |
| `RESUME_WAVE_MONITORING_DECISION_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |
| `ROADMAP.md` | map | governance | HIGH | inventoried from repository filesystem |
| `ROADMAP_MAP.md` | map | governance | MEDIUM | inventoried from repository filesystem |
| `SUBTREE_DECISION_PROTOCOL_V2.md` | protocol | governance | HIGH | inventoried from repository filesystem |
| `SUBTREE_GATE_MATRIX_V2.md` | matrix | governance | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_SUBTREE_STACK_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_KIT_STACK_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `KIT_CATALOG_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `KIT_ASSEMBLY_PROTOCOL_V2.md` | protocol | governance | HIGH | inventoried from repository filesystem |
| `KIT_STACK_COMPLIANCE_REPORT_V2.md` | report | governance | HIGH | inventoried from repository filesystem |
| `ECOSYSTEM_ENVIRONMENT_STACK_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `ENVIRONMENT_CATALOG_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md` | protocol | governance | HIGH | inventoried from repository filesystem |
| `SYSTEM_STATE_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |
| `TASK_MAP.md` | map | governance | MEDIUM | inventoried from repository filesystem |
| `TOPOLOGY_MAP.md` | map | research_planning | MEDIUM | inventoried from repository filesystem |
| `TOOLING_CATALOG_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md` | protocol | governance | HIGH | inventoried from repository filesystem |
| `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md` | contract | governance | HIGH | inventoried from repository filesystem |
| `TOOLING_ERROR_ANALYSIS_PREVIOUS_COMMAND.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `devkit/preflight_baseline_commands_bash.txt` | artifact | governance | MEDIUM | inventoried from repository filesystem |
| `devkit/preflight_baseline_commands_powershell.txt` | artifact | governance | MEDIUM | inventoried from repository filesystem |
| `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md` | protocol | governance | HIGH | inventoried from repository filesystem |
| `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md` | artifact | governance | HIGH | inventoried from repository filesystem |
| `SUBTREE_ATPLT_DEBUG_COMPLIANCE_REPORT_V2.md` | report | governance | HIGH | inventoried from repository filesystem |
| `SUBTREE_ATPLT_DEBUG_REMEDIATION_CLOSURE_REPORT_V2.md` | report | governance | HIGH | inventoried from repository filesystem |
| `TRIANIUMA_ARCHIVE_CORE_MEMORY_RESTORATION_ACTIVATION_PROTOCOL.md` | protocol | archive_restore | MEDIUM | inventoried from repository filesystem |
| `VERSION_GATE_RESET_PROTOCOL.md` | protocol | governance | MEDIUM | inventoried from repository filesystem |
| `RADRILONIUMA_MANIFESTO.md` | manifesto | cloud_genesis | HIGH | Source: ARCKHÆDÆM/Radriloniuma Project Description |
| `Integrity-checker.py` | artifact | core_integrity | HIGH | Imported from Cloud TRIANIUMA-CORE |
| `Memory-core.py` | artifact | memory_reference | MEDIUM | Cloud reference version (Dec 2025) |
| `WORKFLOW_SNAPSHOT_CONTRACT.md` | contract | governance | MEDIUM | inventoried from repository filesystem |

## Coverage Notes
- This atlas now includes full filesystem-level inventory for contract/protocol surfaces matching naming taxonomy.
- Runtime states are authoritative in `GOV_STATUS.md`; historical progression is authoritative in `ROADMAP.md` and `DEV_LOGS.md`.
- Evidence pointers are authoritative in `gov/asr/INDEX.md` and concrete ASR files in `gov/asr/sessions/`.
- Policy topology is governed by `ECOSYSTEM_POLICY_STACK_V2.md` and bound in `INTERACTION_PROTOCOL.md` (M30).
- Module topology is governed by `ECOSYSTEM_MODULE_STACK_V2.md` and bound in `INTERACTION_PROTOCOL.md` (M32).
- Tooling topology is governed by `ECOSYSTEM_TOOLING_STACK_V2.md` and bound in `INTERACTION_PROTOCOL.md` (M33).
- Automated shell preflight is bound in `INTERACTION_PROTOCOL.md` (M34).
- Governance topology is governed by `ECOSYSTEM_GOVERNANCE_STACK_V2.md` and bound in `INTERACTION_PROTOCOL.md` (M35).
- Subtree topology is governed by `ECOSYSTEM_SUBTREE_STACK_V2.md` and bound in `INTERACTION_PROTOCOL.md` (M36).
- ATPLT debug/devkit topology is governed by `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md` and bound in `INTERACTION_PROTOCOL.md` (M37).
- Kit-set topology is governed by `ECOSYSTEM_KIT_STACK_V2.md` and bound in `INTERACTION_PROTOCOL.md` (M38).
- Environment topology is governed by `ECOSYSTEM_ENVIRONMENT_STACK_V2.md` and bound in `INTERACTION_PROTOCOL.md` (M39).

## Remaining Gaps
- Artifact-level owner metadata is not explicitly embedded in every contract file.
- Some planning artifacts are intentionally policy-level and do not expose runtime validators.
- Submodule/subtree ownership cadence still depends on registry-level declarations rather than per-file front matter.
