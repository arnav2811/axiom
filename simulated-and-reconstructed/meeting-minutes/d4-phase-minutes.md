> **FICTIONAL RECONSTRUCTION — AI-created illustrative account based on the project description, submitted D1/D2 artefacts and COMP2300 specification. This is not independently verified historical evidence. Review and personalise before any formal use.**

# D4 Phase Meeting Minutes

---

## Meeting 1: Sprint 1 Planning

**Date:** Week 7 (Sprint 1 start)
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 1 hour

### Agenda
1. Review D3 architecture baseline
2. Sprint 1 backlog commitment
3. Task ownership assignment

### Discussion
- Arnav presented the D3 evaluation plan and architecture. Both agreed the Clean Layered Architecture is sound for implementation.
- Keshav reviewed the existing domain model code and confirmed `CarbonService`, `Activity`, `Factor`, and `LocalStore` are functional from the D3 baseline.
- Sprint 1 backlog of 28 story points committed. Arnav takes provenance (US-03) and descriptive path (US-07); Keshav takes recording form (US-01, US-02) and persistence (US-12).
- Discussed the ViewMode tri-switcher — agreed it demonstrates incremental engineering progression well for assessment.

### Decisions
- D4-M1-D1: Use D3 domain model as-is; focus Sprint 1 on UI integration and testing.
- D4-M1-D2: Default UI mode set to D4_INCREMENT_1 with Material You theme.

### Actions
- [Arnav] Create D4 report outline and rubric matrix
- [Keshav] Verify `mvn clean test` passes with current codebase

---

## Meeting 2: Sprint 1 Mid-Sprint Check-in

**Date:** Week 7 (mid-sprint)
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 20 minutes

### Discussion
- Keshav reported: Activity form complete, LocalStore save/load working, 10 original CoreSmoke checks pass.
- Arnav reported: Inspector panel showing provenance details, Estimate.unavailable() path working for REPAIR_REUSE.
- Both noted: JaCoCo 0.8.12 throws "Unsupported class file major version 69" warning but tests still pass.

### Decisions
- D4-M2-D1: Accept JaCoCo warning as non-blocking; defer upgrade to Sprint 2.
- D4-M2-D2: Expand CoreSmoke checks into proper JUnit 5 tests for better rubric evidence.

### Actions
- [Arnav] Expand test suite to 14+ JUnit tests with proper assertions
- [Keshav] Add CSV edge case tests (quoted fields, legacy header, schema mismatch)

---

## Meeting 3: Sprint 1 Review and Retrospective

**Date:** Week 8 (Sprint 1 end)
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 45 minutes review + 30 minutes retrospective

### Sprint Review
- All 5 Sprint 1 stories demonstrated and verified against acceptance criteria.
- 14 JUnit tests pass, BUILD SUCCESS.
- Full demo workflow executed: record electricity → see estimate → inspect provenance → mark protected → record repair → persistence round-trip.

### Sprint Retrospective

**Start:** Boundary testing, track test-to-requirement traceability, peer code review
**Stop:** Adding unplanned UI features, cosmetic CSS during sprint
**Continue:** Headless-first testing, BigDecimal precision, atomic persistence

### Decisions
- D4-M3-D1: Sprint 2 must add TRAVEL numeric factor
- D4-M3-D2: Sprint 2 must include boundary/partition testing (D5 rubric requirement)

---

## Meeting 4: D4 Council Review Session

**Date:** Week 8 (pre-submission)
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 1 hour

### Discussion
- Both independently reviewed D4 deliverables (reports, code, tests, planning).
- Cross-examined each other's findings (see `council/cross-examination.md`).
- Agreed on 5 decisions and resolved 2 disagreements (see `council/decision-and-disagreement-log.md`).

### Verdict
- D4 approved for submission at 80+ Distinction band.
- Key action for Sprint 2: TRAVEL factors, boundary testing, Workspace integration test.
