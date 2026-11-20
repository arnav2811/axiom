# D3 Deliverable Report — Evaluation Plan, Architectural Design and Technical Setup

**Module:** COMP2300 Software Engineering Group Project  
**Deliverable:** D3 (7%)  
**Product:** Footprint Lens — Contextual Choice Coach  
**Team:** Arnav Mishra, Keshav Singhal  
**Date:** November 2026

---

## 1. Introduction

This report presents the evaluation plan, technical design, project plan, and project setup for Footprint Lens, an India-centric carbon footprint awareness and reduction desktop application. Footprint Lens was selected as Concept A (Contextual Choice Coach) in D2 through a weighted multi-criteria decision matrix, and is designed around five design principles established in our D2 conceptual design: Transparent Provenance (DP1), Constraint-Aware Protection (DP2), Low-Burden Navigation (DP3), Communal Boundary Integrity (DP4), and Descriptive Circularity (DP5).

The system is implemented in Java 21 LTS with JavaFX 23, using a clean layered architecture that completely separates domain logic from UI concerns. This report covers the four assessed areas of D3 and demonstrates readiness for the three-sprint implementation phase (D4–D6).

### 1.1 Team Context

The active team consists of Arnav Mishra and Keshav Singhal. Arnav leads research, evaluation design, strategic coordination, and documentation. Keshav leads engineering architecture, implementation, testing, and build infrastructure. Both members share responsibility for UX, accessibility, and evaluation quality.

---

## 2. Evaluation Plan

### 2.1 Evaluation Method

We will evaluate the final high-fidelity prototype using **moderated usability testing with a concurrent think-aloud protocol**. This method directly observes real users interacting with the system, capturing both performance metrics and qualitative insights into users' mental models and comprehension.

**Justification:** Think-aloud usability testing is a user-centred evaluation method (satisfying the COMP2300 requirement). It produces rich qualitative data about confusion points and expectations (Ericsson & Simon, 1993), while also yielding quantitative performance metrics. Nielsen & Landauer (1993) demonstrate that 5 participants identify approximately 85% of usability problems, making our planned sample of N=5–6 from another COMP2300 group both practical and effective.

> A heuristic evaluation is NOT acceptable as the sole method (per the specification). Our primary evaluation is this user-centred usability test.

### 2.2 Participants

- **Source:** All participants from another active COMP2300 student project group
- **Recruitment:** Self-recruited via Microsoft Teams, lab sessions, and seminars
- **Sample Size:** N = 5–6
- **Voluntary:** Participants may withdraw at any time without reason or penalty

### 2.3 Evaluation Setting

A controlled lab setting — a quiet campus room (university library study room or computer lab) with standardised hardware: laptop running OpenJDK 21 on Windows 11 with external keyboard and mouse. All execution is offline.

### 2.4 Evaluation Tasks

Five standardised tasks using synthetic scenario cards (participants never enter their own real data):

| Task | Scenario | Evaluation Question | D2 Story |
|------|----------|--------------------|----|
| T1 | Record 120 kWh household electricity | EQ1: Can users record and see estimates? | US-01 |
| T2 | Inspect emission factor provenance | EQ1: Can users find and trust factor sources? | US-03 |
| T3 | Record protected night-shift commute | EQ2: Does the system respect constraints? | US-02, US-09 |
| T4 | Record repair activity descriptively | EQ3: Do users understand descriptive records? | US-07 |
| T5 | Review household scope aggregate | EQ4: Can users distinguish shared vs personal? | US-05 |

### 2.5 Data Collection

- **Per-task:** Completion status, critical errors, help requests, comprehension answer, SEQ rating (1–7)
- **Post-session:** System Usability Scale (SUS) — 10-item standardised questionnaire (Brooke, 1996)
- **Debrief:** 5 semi-structured questions on transparency, constraint respect, descriptive records, and frustrations

### 2.6 Success Criteria

| Metric | Target | Minimum |
|--------|:------:|:-------:|
| Task Completion Rate | ≥ 90% | ≥ 80% |
| SUS Score | ≥ 80 (Grade A) | ≥ 70 (Good) |
| Mean SEQ | ≥ 5.5 / 7 | ≥ 5.0 / 7 |
| Provenance Comprehension (T2) | 100% | ≥ 80% |
| Constraint Recognition (T3) | 100% | ≥ 80% |
| Critical Failures | 0 | 0 |

### 2.7 Analysis Plan

- **Quantitative:** Descriptive statistics (mean, median, SD) for completion rates, SUS scores, SEQ ratings. SUS calculated using the standard Brooke (1996) algorithm.
- **Qualitative:** Affinity diagramming of think-aloud notes and debrief responses into 6 thematic clusters (Comprehension, Provenance Trust, Constraint Respect, Scope Boundaries, Interaction Friction, Accessibility).
- **Linking:** Every finding mapped to evaluation questions, D1 themes, and D2 user stories.

### 2.8 Ethical Safeguards

- No sensitive personal data collected (UK GDPR Article 9)
- All tasks use synthetic data — no real utility bills, addresses, or financial information
- De-identified participant codes (P01–P06)
- Written informed consent with right to withdraw
- Data stored locally only; deleted after assessment

### 2.9 Evaluation Materials

Complete draft materials are prepared in `docs/D3/evaluation-materials/`:
- Participant Information Sheet
- Informed Consent Form
- Facilitator Script with think-aloud instructions
- Task Instructions (5 synthetic scenario cards)
- Post-Task Questionnaire (SEQ + SUS + debrief)
- Observer Data Collection Sheet

> **Note:** No recruitment, consent, or sessions have occurred yet. This is a plan for the D7 evaluation. Materials will be reviewed and updated when the final prototype is ready.

---

## 3. Technical Design

### 3.1 Architecture

Footprint Lens uses a **Clean Layered Architecture** with strict separation between:

1. **Presentation Layer** (`in.carbon.ui`) — JavaFX views, event handlers, form binders. Zero calculation logic.
2. **Application Service Layer** (`in.carbon.core.CarbonService`, `ActionPlanner`) — Orchestrates user workflows. Zero JavaFX imports.
3. **Domain Model Layer** (`in.carbon.core` records) — Immutable Java 21 records: `Activity`, `Factor`, `Estimate`, `ActionPlan`. Enforces unit compatibility and scope boundaries.
4. **Persistence Layer** (`in.carbon.core.LocalStore`) — Atomic CSV read/write to `~/.footprint-lens/records.csv`.

This architecture ensures that 100% of domain rules are testable headlessly (no GUI required for CI), which is verified by the `CoreSmoke` test harness (10/10 checks passing).

### 3.2 Design Decisions (ADRs)

| ADR | Decision | Justification |
|-----|----------|---------------|
| ADR-01 | Headless-first domain/UI separation | Enables automated testing without display server |
| ADR-02 | Immutable Java 21 records | Thread-safety, prevents accidental mutation, transparent equality |
| ADR-03 | BigDecimal for all carbon math | Eliminates IEEE-754 rounding errors in emission calculations |
| ADR-04 | Deterministic rule engine (no ML) | Reproducible, offline, auditable coaching; spec prohibits speculative ML |
| ADR-05 | Local CSV persistence (zero-telemetry) | UK GDPR compliance; complete user privacy |

Full ADR details with context, trade-offs, and consequences are documented in `docs/D3/architecture.md`.

### 3.3 UML Diagrams

The following UML diagrams are provided in `docs/D3/architecture.md`:

1. **Package/Layer Architecture Diagram** — Shows the 4-layer structure and dependencies
2. **Class Diagram** — All domain entities, enums, records, services with relationships
3. **Sequence Diagram** — End-to-end flow for recording an activity (user → UI → CarbonService → ActionPlanner → LocalStore → display)
4. **Use-Case Diagram** — 8 use cases mapped to D1 personas (Aanya, Rohan, Meera, Vikram, Deepak)
5. **State Machine Diagram** — Activity lifecycle from form input through validation, factor lookup, constraint evaluation, to persistence

### 3.4 Requirements Traceability

Every architectural component is traced to D1 research themes, D2 user stories, and planned test methods. The full traceability chain is documented in `docs/traceability/d1-d2-to-d3-d7-traceability.md`.

---

## 4. Project Planning

### 4.1 Sprint Roadmap

The implementation is organised into **3 sprints**, each aligned with a deliverable:

| Sprint | Deliverable | Goal |
|--------|-------------|------|
| Sprint 1 → D4 | Increment 1 | Core vertical slice: record, estimate, provenance, protected choice, persistence |
| Sprint 2 → D5 | Increment 2 | Household aggregation, action coaching, boundary/partition testing, DoD |
| Sprint 3 → D6 | Increment 3 | Dashboard, accessibility, user guide, expanded testing, release candidate |

### 4.2 Story Allocation

13 user stories from D2 are prioritised using MoSCoW and allocated across 3 sprints. Must-Have stories are concentrated in Sprint 1 to ensure the core value is delivered first.

### 4.3 Sprint 1 Backlog

Sprint 1 contains 8 tasks totalling 28 story points across 10 working days:
- **US-01:** Activity recording form + estimate calculation (8 pts)
- **US-02:** Protected choice flag (2 pts)
- **US-03:** Provenance detail view (5 pts)
- **US-07:** Descriptive circular record (3 pts)
- **US-12:** Local CSV persistence (5 pts)
- Unit tests (3 pts), build verification (2 pts)

### 4.4 Burndown Chart

A planned burndown chart for Sprint 1 is provided in `docs/D3/project-plan.md`, showing ideal velocity of 2.8 points/day over 10 working days. Actual burndown will be tracked during Sprint 1 and reported in D4.

### 4.5 Quality Gates

- **Definition of Ready:** Story linked to D1/D2 persona, standard format, testable acceptance criteria, sized ≤ 8 points
- **Definition of Done:** Code written, tests passing, peer reviewed, `mvn clean verify` passes, documentation updated, conventional commit message

Full project plan details are in `docs/D3/project-plan.md`.

---

## 5. Project Setup

### 5.1 Development Environment

| Component | Setup |
|-----------|-------|
| Language | Java 21 LTS |
| UI Framework | JavaFX 23 (OpenJFX 23.0.1) |
| Build Tool | Apache Maven 3.9+ with `pom.xml` |
| Test Framework | JUnit Jupiter 5.11.4 |
| Coverage | JaCoCo 0.8.12 |
| Working Repository | GitHub (`https://github.com/arnav2811/axiom.git`, branch: `main`) |
| Assessed Repository | UoS GitLab (to be configured) |
| Run Scripts | `run-app.bat`, `run-app.ps1`, Maven `javafx:run` |

### 5.2 Build Verification

The existing codebase compiles and runs:
- `CoreSmoke` test harness: 10/10 checks passing
- `CarbonServiceTest`: All assertions passing
- Maven build: `mvn clean verify` succeeds
- Application launches from run scripts

### 5.3 Repository Structure

```text
comp2300/
  Submitted D1/                  # Immutable D1 baseline
  Submitted D2/                  # Immutable D2 baseline
  New/application/               # Java/JavaFX application source
  docs/
    audit/                       # Repository audit documents
    assessment/                  # Rubric compliance matrix
    traceability/                # D1→D7 traceability chain
    D3/                          # D3 deliverable documents
      evaluation-materials/      # 6 evaluation materials files
      council/                   # Council review files
  CHANGELOG.md
  README.md
  genai.txt
```

### 5.4 Risk Management

A comprehensive risk register with 10 identified risks is maintained in `docs/D3/risk-register.md`. Risks are scored using Likelihood × Impact, with early warning triggers, mitigation strategies, contingency plans, and owners assigned. Key risks include the reduced team size (R01, score 20), build environment inconsistency (R02, score 15), and GitLab access (R03, score 12).

### 5.5 Agile Tools and Ceremonies

| Tool/Ceremony | Purpose |
|--------------|---------|
| Git branching | Feature branches per story, merge via review |
| Conventional commits | Meaningful, traceable commit messages |
| Sprint planning | Start of each sprint — commit backlog |
| Weekly check-in | Progress, blockers, decisions at lab sessions |
| Sprint review | Demo working software, sign off stories |
| Sprint retrospective | Start/Stop/Continue improvement actions |
| Peer review | Weekly feedback for PRISM |

---

## 6. Reflection on Product and Process

### What went well
- The D1 research provides a strong foundation — 6 personas, 3 themes, and clear research questions that directly inform the evaluation plan.
- The D2 concept selection (via MCDM) gives us a focused, justified product direction.
- The existing codebase provides a working domain model and test harness, giving us confidence in the architecture.
- Having 5 ADRs documents our rationale and prevents future design drift.

### Challenges
- Reduced team size (2 instead of 3) requires careful scope management. We've used MoSCoW to protect Must-Have stories and defer Could-Have features.
- UoS GitLab configuration is pending — this is a known risk (R03) with a mitigation plan.
- Balancing documentation quality with implementation velocity will be an ongoing tension.

### What could be improved
- Earlier GitLab setup would reduce submission-time risk.
- More explicit task-hour estimation would improve burndown accuracy.
- Cross-referencing between D1 personas and evaluation tasks could be even more detailed.

---

## References

- Brooke, J. (1996). SUS: A "quick and dirty" usability scale. In P.W. Jordan et al. (Eds.), *Usability Evaluation in Industry*. Taylor & Francis.
- Ericsson, K.A. & Simon, H.A. (1993). *Protocol Analysis: Verbal Reports as Data*. MIT Press.
- Nielsen, J. & Landauer, T.K. (1993). A mathematical model of the finding of usability problems. *Proceedings of ACM INTERCHI '93*, 206–213.
- Central Electricity Authority, Government of India (2023). *CO2 Baseline Database for the Indian Power Sector*. CEA.

---

*Authors: Arnav Mishra, Keshav Singhal*  
*AI assistance disclosed in `genai.txt`*
