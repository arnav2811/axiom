# Simulated Meeting Minutes — D3 Phase

> **FICTIONAL RECONSTRUCTION — AI-created illustrative account based on the project description, submitted D1/D2 artefacts and COMP2300 specification. This is not independently verified historical evidence. Review and personalise before any formal use.**

---

## Week 1 (Post-D2 Submission) — Sprint 0 Planning

**Date:** Monday, 4 November 2026, 10:00–10:45  
**Venue:** Library Study Room, Building 32  
**Present:** Arnav Mishra, Keshav Singhal  
**Absent:** None

### Agenda
1. D2 submission debrief
2. D3 requirements review
3. Work allocation for D3

### Discussion

**Arnav:** D2 is submitted. Concept A (Contextual Choice Coach) was selected through MCDM. We now need to plan D3 — evaluation plan, technical design, project planning, and project setup. The rubric has 4 equally-weighted criteria, all needing 80+ for distinction.

**Keshav:** I've reviewed the existing codebase in `New/application/`. The domain model is solid — `CarbonService`, `Activity`, `Factor`, `Estimate` are all implemented as Java 21 records. `CoreSmoke` passes 10/10 checks. The architecture is already layered — `in.carbon.core` has zero JavaFX imports.

**Arnav:** Good. For D3, I'll own the evaluation plan and report. You own the technical design documentation and project infrastructure. We both contribute to project planning and risk.

**Keshav:** Agreed. I'll also verify the Maven build and document the architecture with proper UML diagrams. What about the evaluation method?

**Arnav:** Think-aloud usability testing. The spec says we need a user-centred method, participants from another COMP2300 group, lab setting, and no sensitive data. I'll design 5 tasks mapped to our D1 research questions and D2 design principles.

**Keshav:** Makes sense. For project planning, should we use 3 sprints or 4?

**Arnav:** 3 sprints, one per deliverable — Sprint 1 → D4, Sprint 2 → D5, Sprint 3 → D6. Clean alignment.

### Decisions
- D3 work split: Arnav → evaluation + report + traceability; Keshav → architecture + UML + risk + build
- 3-sprint roadmap aligned with D4/D5/D6
- Think-aloud usability testing as evaluation method
- Next meeting: Thursday lab session

### Actions
| Action | Owner | Deadline |
|--------|-------|----------|
| Draft evaluation protocol | Arnav | Week 1 Thursday |
| Create UML class diagram from actual source code | Keshav | Week 1 Thursday |
| Review D3 rubric criteria in detail | Both | Week 1 Wednesday |

---

## Week 1 (Mid-Week) — Architecture & Evaluation Draft Review

**Date:** Thursday, 7 November 2026, 14:00–14:30  
**Venue:** Computer Lab, Building 59  
**Present:** Arnav Mishra, Keshav Singhal

### Discussion

**Arnav:** I've drafted the evaluation protocol with 5 tasks. Each task maps to a D1 theme and D2 design principle. Task 1 tests basic recording (S1, US-01), Task 2 tests provenance transparency (S3, DP1), Task 3 tests protected choice constraint handling (S2, DP2), Task 4 tests descriptive circular records (L2, DP5), and Task 5 tests household scope clarity (L1, DP4).

**Keshav:** That covers all our key design principles. I've started the class diagram — it matches the actual source code with `<<record>>` stereotypes for the Java 21 records. I also started a sequence diagram for the record-activity flow. Question: should the architecture document include ADRs?

**Arnav:** Absolutely. ADRs show we've thought about *why* we made each decision, not just *what* we chose. That's what distinguishes 80+ from 70s in the Technical Design criterion — "thoroughly justified" versus just "justified."

**Keshav:** I'll write 5 ADRs: headless-first separation, immutable records, BigDecimal math, deterministic rule engine, and local CSV persistence. Each one has a real rationale.

**Arnav:** Perfect. I'll also draft the evaluation materials — info sheet, consent form, facilitator script, task cards, SUS questionnaire, and observation sheet. That should demonstrate "rich detail" for the evaluation plan criterion.

### Decisions
- 5 ADRs with context/decision/justification/trade-off structure
- 6 evaluation materials files to demonstrate thoroughness
- Both to review each other's drafts before Monday

### Actions
| Action | Owner | Deadline |
|--------|-------|----------|
| Complete evaluation materials (6 files) | Arnav | Week 2 Monday |
| Complete sequence diagram and state machine | Keshav | Week 2 Monday |
| Draft risk register (aim for 10 risks) | Keshav | Week 2 Monday |

---

## Week 2 — D3 Integration and Council Review

**Date:** Monday, 11 November 2026, 10:00–10:50  
**Venue:** Library Study Room, Building 32  
**Present:** Arnav Mishra, Keshav Singhal

### Discussion

**Arnav:** I've completed the evaluation protocol, all 6 materials files, and started the D3 report. The traceability document links D1 themes → D2 stories → D3 architecture → D7 evaluation tasks.

**Keshav:** Architecture document is done with 5 UML diagrams and 5 ADRs. Risk register has 10 risks. The highest is R01 — team reduced to 2 members (score 20). Sprint 1 backlog has 8 tasks at 28 story points.

**Arnav:** Good. Let's do the council review now. I'll review from the research/strategy perspective, you review from engineering/architecture. We need to find real issues, not just approve everything.

**Keshav:** Agreed. One thing I've noticed — we haven't configured GitLab yet. The rubric says "set up your project management and development environment, including your GitLab repository." That's explicit.

**Arnav:** You're right, that's a gap. Can you set it up this week?

**Keshav:** I'll try. If I can't get permissions sorted, I'll prepare the exact push commands and document the blocker. We shouldn't pretend it's done if it isn't.

**Arnav:** Agreed. Honesty about what's pending is better than fabricating evidence. I'll also update genai.txt to disclose our AI assistance for D3 documentation.

### Decisions
- GitLab configuration elevated to high priority
- Council review to be conducted this week (independent reviews, then cross-examination)
- genai.txt to be updated before submission

### Actions
| Action | Owner | Deadline |
|--------|-------|----------|
| Independent Arnav council review | Arnav | Week 2 Wednesday |
| Independent Keshav council review | Keshav | Week 2 Wednesday |
| Cross-examination and final verdict | Both | Week 2 Thursday |
| Configure GitLab remote | Keshav | Week 2 Friday |
| Update genai.txt | Arnav | Week 2 Friday |
| Compile D3 PDF for submission | Arnav | Week 2 Friday |

---

## Week 2 (End) — Pre-Submission Check

**Date:** Friday, 14 November 2026, 15:00–15:20  
**Venue:** Computer Lab, Building 59  
**Present:** Arnav Mishra, Keshav Singhal

### Discussion

**Arnav:** Council review is complete. Both reviews agree D3 is distinction-ready. Cross-examination surfaced 7 actions — most are low priority. The two key ones are GitLab (high) and adding R11 (medium).

**Keshav:** GitLab is [PLACEHOLDER — confirm whether access was obtained]. R11 added to the risk register. Build verified — `mvn clean verify` passes, CoreSmoke 10/10.

**Arnav:** Good. The D3 report covers all 4 criteria. References are ACM SIGCHI style. I've checked the rubric evidence matrix — every criterion has specific evidence locations.

**Keshav:** Let's do a final checklist:
- [x] Evaluation plan with method, participants, tasks, criteria, analysis
- [x] 6 evaluation materials files
- [x] Architecture with 5 UML diagrams and 5 ADRs
- [x] 3-sprint roadmap with Sprint 1 backlog and burndown
- [x] 10-risk register with mitigations
- [x] Council review pack (6 files)
- [x] genai.txt updated
- [ ] PDF compiled [PLACEHOLDER — depends on LaTeX/Word availability]
- [ ] GitLab push verified [PLACEHOLDER]

**Arnav:** We're in good shape. Let's submit.

### Decisions
- D3 approved for submission by council final verdict
- Proceed to Sprint 1 (D4) execution

---

*End of D3 phase meeting records.*
