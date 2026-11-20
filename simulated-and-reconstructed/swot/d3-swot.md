# D3 SWOT Analysis

> **FICTIONAL RECONSTRUCTION — AI-created illustrative SWOT based on project description and D3 deliverables. Review and personalise before formal use.**

**Date:** November 2026  
**Phase:** D3 Complete → Entering Sprint 1 (D4)

---

## Strengths

| # | Strength | Evidence |
|---|----------|---------|
| S1 | **Strong research foundation** — D1 provides 6 personas, 3 themes, 3 research questions, and clear stakeholder needs that directly inform the evaluation plan and architecture | D1 report; traceability chain |
| S2 | **Working domain model** — `CarbonService`, `Activity`, `Factor`, `Estimate` are implemented and tested (10/10 CoreSmoke checks) | Existing source code; test results |
| S3 | **Clean architecture** — strict separation of UI from domain logic enables headless testing | Zero `javafx.*` imports in `in.carbon.core` |
| S4 | **Comprehensive evaluation plan** — 5 requirement-driven tasks, 6 materials files, 6 success criteria, analysis plan | `docs/D3/evaluation-protocol.md` + materials |
| S5 | **Clear role division** — Arnav (research/documentation) + Keshav (engineering/testing) with shared UX/accessibility ownership | Contribution plan |

## Weaknesses

| # | Weakness | Mitigation |
|---|----------|-----------|
| W1 | **Team reduced to 2 members** — ~33% capacity reduction from original plan | MoSCoW prioritisation; defer Could-Have stories |
| W2 | **GitLab not yet configured** — assessed repository requirement not fully met | High-priority action; handover checklist if permissions unavailable |
| W3 | **No actual Sprint 1 burndown data** — planned burndown only | Track actuals daily during Sprint 1; adjust Sprint 2 based on evidence |
| W4 | **Evaluation materials are drafts** — may need revision when final prototype is ready | Protocol versioning note added; spec permits updates for D7 |

## Opportunities

| # | Opportunity | Action |
|---|------------|--------|
| O1 | **Existing codebase reduces Sprint 1 effort** — domain model already works; Sprint 1 is primarily UI wiring | Focus Sprint 1 on provenance view and protected choice UX |
| O2 | **D2 provides clear user stories with acceptance criteria** — reduces Sprint 1 planning overhead | Use D2 stories directly in sprint backlog |
| O3 | **Early evaluation plan preparation** — materials ready long before D7 allows refinement | Review and update materials after each sprint |
| O4 | **Council review process generates real improvements** — 7 actions identified in D3 review | Continue for all deliverables |

## Threats

| # | Threat | Mitigation |
|---|--------|-----------|
| T1 | **Other coursework deadlines reduce available time** — Sprint 1 velocity may be lower than planned | Velocity adjustment clause; adjust Sprint 2 scope |
| T2 | **Build environment differences on assessor's machine** — app may not compile/run | Pin versions in pom.xml; test on clean machine; provide run scripts |
| T3 | **D7 participant recruitment may fail** — cannot find another COMP2300 group willing to participate | Begin recruitment early; contact multiple groups |
| T4 | **Scope creep during implementation** — temptation to add features beyond MoSCoW plan | Strict sprint backlog lock; only PO can add to future sprints |
