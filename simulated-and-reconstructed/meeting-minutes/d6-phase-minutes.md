# D6 Phase Meeting Minutes

> **⚠ FICTIONAL RECONSTRUCTION:** These minutes are a simulated reconstruction of meetings that would have occurred during the D6 phase. They are produced for assessment portfolio completeness and do not represent verbatim records of actual conversations.

---

## Meeting 1 — Sprint 3 Planning

**Date:** Sprint 3, Day 1
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 50 minutes
**Type:** Sprint Planning

### Agenda
1. Sprint 2 retrospective action items
2. Sprint 3 goal and scope
3. Task allocation with TDD commitment

### Discussion

**Arnav:** Sprint 2 was solid — 28 SP delivered, boundary testing in place, TRAVEL working. For Sprint 3 we need release-candidate quality. I've drafted 7 stories: data export, dashboard, record management, factor editor, UI polish, all 7 categories, and user guide.

**Keshav:** Agreed. I want to adopt TDD this sprint — write tests first for every feature. Can we commit to that?

**Arnav:** Absolutely. Let's also plan the FactorEditor extraction you suggested in the retro — the main app class is too large.

### Decisions
- **D6-M1-D1:** Sprint 3 goal: release-candidate with all features, user guide, and TDD
- **D6-M1-D2:** Arnav owns: US-10 (export), US-11 (dashboard), US-15 (UI polish), US-17 (user guide)
- **D6-M1-D3:** Keshav owns: US-13 (record management), US-14 (factor editor), US-16 (all categories)
- **D6-M1-D4:** TDD adopted: tests written before implementation

### Actions
| # | Action | Owner | Due |
|---|--------|-------|-----|
| 1 | Write ExportTest before implementing exportCsv() | Arnav | Day 2 |
| 2 | Write FactorEditorTest before extraction | Keshav | Day 2 |
| 3 | Add remaining 5 category factors to data | Keshav | Day 3 |
| 4 | Draft user guide outline | Arnav | Day 3 |

---

## Meeting 2 — Mid-Sprint Review

**Date:** Sprint 3, Day 5
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 25 minutes
**Type:** Mid-Sprint Check-in

### Status Updates

**Arnav:**
- Export done and tested (3 tests: round-trip, empty data, special characters)
- Dashboard BarChart rendering correctly with live data
- Starting UI polish — CSS stylesheet drafted

**Keshav:**
- FactorEditor extracted, 3 tests pass
- All 7 categories working — each has at least one default factor
- Record edit/delete with confirmation dialog implemented
- ActionPlannerTest added (2 tests)

### Decisions
- **D6-M2-D1:** TestFX officially deferred — manual UI testing sufficient
- **D6-M2-D2:** User guide scope: end-user focused, no developer docs (those go in architecture.md)
- **D6-M2-D3:** Bar chart selected over pie chart for dashboard (Arnav's recommendation accepted)

---

## Meeting 3 — Sprint 3 Review

**Date:** Sprint 3, Day 8
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 30 minutes
**Type:** Sprint Review

### Discussion

**Arnav:** All 7 stories are done. 28+ tests pass. Build is green. User guide has 11 sections. Dashboard looks good.

**Keshav:** FactorEditor is clean and testable. All categories work end-to-end. Record management has confirmation dialogs. I'm satisfied with the architecture.

**Arnav:** Let's do the final DoD walkthrough.

[DoD verification completed for all 7 stories — all criteria met]

### Decisions
- **D6-M3-D1:** Sprint 3 complete — all stories meet Definition of Done
- **D6-M3-D2:** Velocity: 30 SP delivered (matches plan)
- **D6-M3-D3:** Application is feature-complete for D7 evaluation

---

## Meeting 4 — Sprint 3 Retrospective & D7 Planning

**Date:** Sprint 3, Day 9
**Attendees:** Arnav Mishra, Keshav Singhal
**Duration:** 35 minutes
**Type:** Retrospective + D7 Planning

### Retrospective

**What went well:**
- TDD improved code quality — ExportTest caught an edge case with special characters in descriptions
- FactorEditor extraction was smooth — no regressions
- User guide written concurrently with features

**What could improve:**
- Dashboard performance untested with large datasets
- UI polish was still somewhat rushed at the end
- Should have done accessibility testing earlier

### D7 Planning

**Arnav:** For D7 we need to run a user evaluation. The protocol is in D3. We need to recruit participants from another COMP2300 group, adapt the task cards to the final application, and prepare analysis instruments.

**Keshav:** I'll review the D3 evaluation materials and update the task cards to match our current features. You handle the facilitator script updates and analysis plan.

### Decisions
- **D6-M4-D1:** D7 evaluation: think-aloud usability testing, N=5-6 participants from another COMP2300 group
- **D6-M4-D2:** Arnav leads facilitation; Keshav leads observation and note-taking
- **D6-M4-D3:** Evaluation materials to be updated from D3 baseline to reflect final application features

### Actions
| # | Action | Owner | Due |
|---|--------|-------|-----|
| 1 | Update task cards for D7 | Keshav | D7 prep |
| 2 | Update facilitator script | Arnav | D7 prep |
| 3 | Draft analysis plan | Arnav | D7 prep |
| 4 | Recruit participants | Both | D7 prep |
