# D5 Phase Meeting Minutes

> **⚠ FICTIONAL RECONSTRUCTION:** These minutes are a simulated reconstruction of meetings that would have occurred during the D5 phase. They are produced for assessment portfolio completeness and do not represent verbatim records of actual conversations.

---

## Meeting 1 — Sprint 2 Planning

**Date:** Sprint 2, Day 1
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 45 minutes
**Type:** Sprint Planning

### Agenda
1. Sprint 1 retrospective action items review
2. Sprint 2 goal and backlog refinement
3. Task allocation and estimation

### Discussion

**Arnav:** Sprint 1 delivered all 5 stories. For Sprint 2 we need breadth — multiple categories and household aggregation. I'll draft the sprint goal.

**Keshav:** Agreed. I want to focus on boundary testing this sprint. The D5 rubric specifically asks for boundary/partition testing and we need explicit tests for zero, negative, and max-value inputs.

**Arnav:** Good call. Let's also tackle the TRAVEL emission factor — right now Activity restricts to ELECTRICITY only. We need to extend the constructor.

**Keshav:** I can own the Activity constructor refactor and the boundary tests. You take the household aggregation and action coaching?

### Decisions
- **D5-M1-D1:** Sprint 2 goal: breadth, depth, boundary testing, constraint-respecting coaching
- **D5-M1-D2:** Arnav owns US-05 (household aggregate), US-08/US-09 (coaching), US-06 (multi-category)
- **D5-M1-D3:** Keshav owns TRAVEL factor extension, US-04 (factor badges), boundary/partition tests
- **D5-M1-D4:** Definition of Done applied to every story

### Actions
| # | Action | Owner | Due |
|---|--------|-------|-----|
| 1 | Draft Sprint 2 backlog with story points | Arnav | Day 2 |
| 2 | Extend Activity constructor for TRAVEL | Keshav | Day 3 |
| 3 | Write boundary/partition test cases | Keshav | Day 5 |
| 4 | Implement household aggregation logic | Arnav | Day 4 |

---

## Meeting 2 — Mid-Sprint Stand-up

**Date:** Sprint 2, Day 4
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 15 minutes
**Type:** Daily Stand-up

### Status Updates

**Arnav:**
- Yesterday: Completed `totalsByMetric()` household aggregation. Dashboard now shows separate household total.
- Today: Starting ActionPlanner constraint logic.
- Blockers: None.

**Keshav:**
- Yesterday: Extended Activity constructor — TRAVEL factors now accepted. Tests pass.
- Today: Writing boundary tests for zero, negative, BigDecimal.MAX, empty-string inputs.
- Blockers: Need to decide on max-value threshold for validation.

### Decisions
- **D5-M2-D1:** Max quantity set to 999,999 kWh/km — values above rejected with validation error
- **D5-M2-D2:** All boundary tests use `assertThrows` for invalid inputs, `assertEquals` for edge-valid

---

## Meeting 3 — Sprint 2 Review Preparation

**Date:** Sprint 2, Day 7
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 30 minutes
**Type:** Sprint Review Prep

### Discussion

**Keshav:** All 6 boundary tests pass. I've covered zero quantity, negative quantity, just-above-max, null factor, empty description, and BigDecimal precision edge case. The constraint coaching test (`protectedActivityCannotBeCompared`) also passes.

**Arnav:** Good. The coaching logic is done — `ActionPlanner.suggestion()` returns category-specific advice and skips protected activities. US-06 multi-category recording works: form clears after save.

**Keshav:** Test count is now 20+. Build is green. Should we do the DoD checklist walkthrough?

**Arnav:** Yes. Let's go through each story against the Definition of Done criteria.

### Decisions
- **D5-M3-D1:** All 7 stories meet Definition of Done
- **D5-M3-D2:** Sprint 2 velocity: 28 story points delivered (matches estimate)
- **D5-M3-D3:** Sprint 3 planning deferred to next meeting

### Actions
| # | Action | Owner | Due |
|---|--------|-------|-----|
| 1 | Write Sprint 2 review document | Arnav | Day 8 |
| 2 | Prepare Sprint 3 backlog draft | Keshav | Day 8 |
| 3 | Update burndown chart | Arnav | Day 8 |

---

## Meeting 4 — Sprint 2 Retrospective & Sprint 3 Planning

**Date:** Sprint 2, Day 8
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 40 minutes
**Type:** Retrospective + Sprint 3 Planning

### Retrospective

**What went well:**
- Boundary/partition testing caught a real edge case (BigDecimal precision loss at scale)
- TRAVEL factor extension was cleaner than expected
- Both team members delivered all assigned stories on time

**What could improve:**
- Should write tests before implementation (test-driven development) in Sprint 3
- ActionPlanner logic is in a single method — needs refactoring
- UI tests are still manual — should consider TestFX in Sprint 3

**Action items for Sprint 3:**
- **R1:** Adopt TDD for all new features
- **R2:** Refactor ActionPlanner into strategy pattern
- **R3:** Investigate TestFX integration for UI testing

### Sprint 3 Planning

**Sprint 3 Goal:** "Deliver release-candidate quality: data export (CSV/PDF), dashboard visualisation, factor editing, comprehensive UI polish, and user guide."

**Planned stories:** US-10 (data export), US-11 (dashboard charts), US-13 (edit/delete records), US-14 (factor editor), US-15 (UI polish and accessibility)

### Decisions
- **D5-M4-D1:** Sprint 3 backlog: 28 SP across 7 tasks
- **D5-M4-D2:** Arnav leads dashboard charts and data export; Keshav leads factor editor and record management
- **D5-M4-D3:** User guide authoring starts mid-sprint

### Actions
| # | Action | Owner | Due |
|---|--------|-------|-----|
| 1 | Finalise Sprint 3 backlog in GitLab | Arnav | Day 9 |
| 2 | Begin US-10 data export implementation | Arnav | Day 10 |
| 3 | Begin US-13 edit/delete records | Keshav | Day 10 |
| 4 | Set up TestFX dependency in pom.xml | Keshav | Day 9 |
