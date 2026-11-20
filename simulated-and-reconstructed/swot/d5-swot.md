# D5 SWOT Analysis — Sprint 2 Retrospective

> **⚠ FICTIONAL RECONSTRUCTION:** This SWOT analysis is a simulated reconstruction for assessment portfolio completeness.

---

## Strengths

| # | Strength | Evidence |
|---|----------|----------|
| S1 | Systematic boundary/partition testing | 6+ boundary tests covering zero, negative, max, null, empty-string, precision edge cases |
| S2 | Multi-category support delivered | TRAVEL factor extension working alongside ELECTRICITY; Activity constructor generalised |
| S3 | Clear task ownership | Sprint planning explicitly divided stories between Arnav (aggregation, coaching) and Keshav (factors, testing) |
| S4 | Definition of Done consistently applied | Every story verified against acceptance criteria with test evidence |
| S5 | Ethical design embedded in code | Constraint-respecting coaching protects lifestyle choices (DP2 from D2) |

## Weaknesses

| # | Weakness | Impact | Mitigation |
|---|----------|--------|------------|
| W1 | Tests written after implementation | Missed opportunity to let tests drive design | Adopt TDD in Sprint 3 |
| W2 | ActionPlanner in single method | Hard to extend coaching rules; grows linearly | Refactor to strategy pattern in Sprint 3 |
| W3 | No UI automation tests | Manual UI testing is slow and error-prone | Investigate TestFX integration |
| W4 | Only 2 of 7 categories implemented | WATER, FOOD, PACKAGING, WASTE, REPAIR_REUSE still placeholder | Prioritise in Sprint 3 backlog |

## Opportunities

| # | Opportunity | Plan |
|---|-------------|------|
| O1 | TestFX for automated UI testing | Add dependency in Sprint 3; write tests for form validation and navigation |
| O2 | Data export (CSV/PDF) | US-10 planned for Sprint 3; builds on existing `LocalStore` CSV infrastructure |
| O3 | Dashboard visualisation | JavaFX charts API available; can display emissions trends |
| O4 | Factor editing by users | US-14 planned; enables USER_SUPPLIED factor status |

## Threats

| # | Threat | Likelihood | Impact | Mitigation |
|---|--------|-----------|--------|------------|
| T1 | Sprint 3 scope too ambitious | Medium | High | Strict MoSCoW; defer nice-to-haves |
| T2 | JavaFX chart rendering on different OS | Low | Medium | Test on lab machines before D6 |
| T3 | Reduced team capacity (2 members) | High | High | Focus on must-have features only |
| T4 | Integration complexity with new categories | Medium | Medium | Incremental delivery; test after each category |
