# Changelog

All notable changes to the Footprint Lens project are documented here.

## [D7] — Final Evaluation (v1.0.0)

### Added
- `docs/D7/d7-report.md` — Complete evaluation report with think-aloud usability testing design, 10 sections
- `docs/D7/analysis-plan.md` — Detailed analysis methodology (quantitative + qualitative)
- `docs/D7/evaluation-materials/` — 6 updated evaluation materials (facilitator script, task cards, questionnaire, observation sheet, info sheet, consent form)
- `docs/D7/rubric-evidence-matrix.md` — 3-criterion evidence mapping
- `docs/D7/contribution-plan.md` — Arnav (facilitation/analysis) and Keshav (instruments/observation)
- `docs/D7/council/` — 6 council review files
- Meeting minutes, reflections, learning outcomes for D7

### Evaluation Design
- Think-aloud usability testing, N=5-6 participants from another COMP2300 group
- 5 tasks covering: recording, dashboard, editing, factor editor, export + coaching
- SUS + SEQ + custom questions + observation sheet
- Results marked [PENDING] — no fabricated data

## [D6] — Increment 3 (v1.0.0-rc)

### Added
- `docs/D6/d6-report.md` — Complete D6 report with Sprint 3 review, feature summary, test coverage
- `docs/D6/architecture.md` — Final architecture with ADRs 006-008, component diagram, traceability
- `docs/D6/sprint-3-review.md` — Sprint 3 review with burndown and DoD verification
- `docs/D6/user-guide.md` — Comprehensive user guide (11 sections, troubleshooting, keyboard shortcuts)
- `docs/D6/rubric-evidence-matrix.md` — 4-criterion evidence mapping
- `docs/D6/contribution-plan.md` — 6 work packages each for Arnav and Keshav
- `docs/D6/council/` — 6 council review files
- Meeting minutes, reflections, SWOT, learning outcomes for D6

### Application
- All 7 emission categories fully functional
- Data export (CSV, RFC 4180 compliant)
- Dashboard with JavaFX BarChart
- Record editing and deletion with confirmation
- Factor editor (FactorEditor class extraction)
- UI polish: keyboard navigation, high-contrast, consistent layout
- 28+ tests, 0 failures, BUILD SUCCESS

## [D5] — Increment 2 (v0.3.0)

### Added
- `docs/D5/d5-report.md` — Complete D5 report with boundary/partition testing, Definition of Done, burndown, task summary
- `docs/D5/sprint-2-review.md` — Sprint 2 review with acceptance criteria verification for 7 stories
- `docs/D5/sprint-3-plan.md` — Sprint 3 backlog (28 SP, 7 tasks) for release-candidate delivery
- `docs/D5/rubric-evidence-matrix.md` — 4-criterion evidence mapping (Design, Application, Testing, Planning)
- `docs/D5/contribution-plan.md` — 3+ work packages each for Arnav and Keshav
- `docs/D5/council/` — 6 council review files (Arnav review, Keshav review, cross-examination, self/peer review, decision log, final verdict)
- Meeting minutes, reflections, SWOT, learning outcomes for D5

### Application
- TRAVEL emission factor extension — Activity constructor generalised beyond ELECTRICITY-only
- Household aggregation via `totalsByMetric()` with Scope partitioning
- Constraint-respecting action coaching (`ActionPlanner.suggestion()`)
- Factor verification badges (VERIFIED/ILLUSTRATIVE/USER_SUPPLIED)
- Multi-category recording with form-clear-after-save
- 6+ boundary/partition tests: zero, negative, max-value, null, empty-string, BigDecimal precision

### Testing
- Test count: 20+ tests, 0 failures, BUILD SUCCESS
- Boundary value analysis and equivalence partitioning applied systematically
- Definition of Done checklist verified for every story

## [D4] — Increment 1 (v0.2.0)

### Added
- `docs/D4/d4-report.md` — Complete D4 report with Sprint 1 review, burndown, testing evidence
- `docs/D4/architecture.md` — Architecture evolution from D3, design refinements, updated UML
- `docs/D4/sprint-1-review.md` — Sprint 1 review with acceptance criteria verification
- `docs/D4/sprint-2-plan.md` — Detailed Sprint 2 backlog (28 SP, 8 tasks)
- `docs/D4/rubric-evidence-matrix.md` — Criterion-by-criterion evidence mapping
- `docs/D4/contribution-plan.md` — 3+ work packages each for Arnav and Keshav
- `docs/D4/council/` — 6 council review files
- Meeting minutes, reflections, SWOT, learning outcomes for D4

### Application
- Build verified: `mvn clean test` → 14 tests, 0 failures, BUILD SUCCESS
- Sprint 1 stories delivered: US-01, US-02, US-03, US-07, US-12
- All 5 D3 ADRs validated by Sprint 1 implementation

## [D3] — 2026-11-20

### Added
- **Evaluation Plan:** Complete user-centred evaluation protocol with think-aloud usability testing method, 5 synthetic task scenarios, SUS/SEQ instruments, recruitment plan (N=5–6 from another COMP2300 group), analysis plan. 6 evaluation materials files (info sheet, consent, facilitator script, task cards, questionnaire, observation sheet).
- **Technical Design:** Clean layered architecture document with 5 UML diagrams (architecture, class, sequence, use-case, state machine), 5 Architectural Decision Records (ADRs), requirements traceability matrix.
- **Project Planning:** 3-sprint roadmap aligned with D4/D5/D6, Sprint 1 detailed backlog (8 tasks, 28 story points), planned burndown chart, MoSCoW prioritisation, Definition of Ready/Done.
- **Project Setup:** 10-risk register with L×I scoring and mitigations, Maven build verification, run scripts, test harness documentation.
- **D3 Report:** Comprehensive report covering all 4 rubric areas with references.
- **Council Review:** 6-file review pack (Arnav review, Keshav review, cross-examination, self/peer review, decision log, final verdict).
- **Audit Documents:** Post-D2 baseline audit, submitted D1/D2 inventory, old D2 disposition, D3 readiness gap analysis.
- **Assessment Matrix:** D3–D7 rubric compliance matrix mapping all criteria to evidence.
- **Traceability:** End-to-end chain from D1 research → D2 concepts → D3 architecture → D7 evaluation.
- **Contribution Plan:** 3+ work packages each for Arnav and Keshav.
- **Rubric Evidence Matrix:** Criterion-by-criterion mapping with evidence locations and gap analysis.

### Changed
- Repository structure: added `docs/` hierarchy for D3–D7 deliverables.
- Team roster: D3 onwards uses 2 active members (Arnav Mishra, Keshav Singhal only).

### Noted
- UoS GitLab remote configuration pending (risk R03 tracked).
- Evaluation materials are drafts for D7 execution — no recruitment or sessions conducted yet.

## [D2] — 2026-11-01 (Submitted)

### Added
- Conceptual design with 3 concepts evaluated via weighted MCDM.
- Concept A (Contextual Choice Coach) selected with justification.
- 5 Design Principles (DP1–DP5).
- MoSCoW-prioritised user stories with acceptance criteria.
- Low-fidelity Figma prototype with P0–P6 interaction model.
- Ideation evidence (sketches, divergent thinking, refinement).

## [D1] — 2026-10-15 (Submitted)

### Added
- Literature review with themes S1–S3 and L1–L3.
- Thematic analysis of carbon footprint awareness in Indian context.
- 6 personas (P1–P6) with scenarios.
- Research questions RQ1–RQ3.
- Jobs-to-be-Done framework.
- Prioritised epics.
