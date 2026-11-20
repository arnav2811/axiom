# D4 Council Decision and Disagreement Log

---

## Decisions

| ID | Decision | Rationale | Agreed By |
|----|----------|-----------|-----------|
| D4-DEC-01 | TRAVEL factor to be added in Sprint 2 | Expands core journey breadth; D5 rubric rewards depth | Arnav, Keshav |
| D4-DEC-02 | UI refactoring deferred to Sprint 3 | Feature delivery prioritised over architectural cleanup | Arnav, Keshav |
| D4-DEC-03 | Test count reported as "14 JUnit 5" primary | CoreSmoke is supplementary; JUnit is primary evidence | Arnav, Keshav |
| D4-DEC-04 | CSV schema version "2" planned for Sprint 2 | Needed if TRAVEL factor columns are added | Keshav (proposed), Arnav (agreed) |
| D4-DEC-05 | Boundary/partition testing mandatory in Sprint 2 | D5 rubric explicitly requires it | Arnav, Keshav |

## Disagreements

| ID | Topic | Arnav Position | Keshav Position | Resolution |
|----|-------|----------------|-----------------|------------|
| D4-DIS-01 | UI controller extraction timing | Defer to Sprint 3 (velocity concern) | Extract in Sprint 2 (maintainability) | **Deferred to Sprint 3** — Arnav's velocity argument prevailed; Sprint 2 focuses on features |
| D4-DIS-02 | CoreSmoke in test count | Include as supplementary (24 total) | Exclude — only Maven tests count | **14 JUnit 5 tests** as primary; CoreSmoke documented as supplementary smoke runner |
