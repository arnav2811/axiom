# D4 Contribution Plan

**Deliverable:** D4 — Increment 1
**Active Members:** Arnav Mishra, Keshav Singhal

---

## Arnav Mishra — 3+ Meaningful Contributions

| # | Work Package | Deliverable | Evidence |
|---|-------------|-------------|----------|
| 1 | **Initialise D4 structure:** Report outline, rubric matrix, evidence mapping, sprint review template | `d4-report.md`, `rubric-evidence-matrix.md` | Report structure, rubric mapping |
| 2 | **Factor provenance inspector and descriptive path:** Design and implement US-03 (provenance detail view) and US-07 (REPAIR_REUSE descriptive handling) | `FootprintLensApp.showDetails()`, `Estimate.unavailable()` | Inspector panel code, test method |
| 3 | **Council review, test expansion, integration:** Lead council review, expand JUnit tests to 14, integrate feedback into report | `council/arnav-review.md`, `CarbonServiceTest` additions | Review findings, test methods |

## Keshav Singhal — 3+ Meaningful Contributions

| # | Work Package | Deliverable | Evidence |
|---|-------------|-------------|----------|
| 1 | **Activity recording form and validation:** Implement US-01 (category-aware form with validation) and US-02 (protected choice checkbox) | `FootprintLensApp.buildEntryForm()`, `saveActivity()` | Form code, validation logic |
| 2 | **LocalStore persistence engine:** Implement US-12 (atomic CSV save/load with header validation, legacy migration, error handling) | `LocalStore.java` (132 lines) | Save/load methods, 3 CSV tests |
| 3 | **Build verification, run scripts, test evidence:** Verify `mvn clean test` passes, update run scripts, document test output | `pom.xml`, run scripts, test output | BUILD SUCCESS log |

---

*Both members share UX review, accessibility checks, and council review responsibilities.*
