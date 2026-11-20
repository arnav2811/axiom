# D4 Rubric Evidence Matrix

**Deliverable:** D4 — Increment 1 (7% of module mark)
**Target Band:** 80+ Distinction

---

## Criterion 1: Design (25%)

| Rubric Expectation | Evidence Location | Status | Quality |
|--------------------|-------------------|--------|---------|
| Excellent design decisions well justified | `docs/D4/architecture.md` §2 — 3 design refinements with context, rationale, trade-offs | ✅ | Distinction |
| Robust architecture | `docs/D4/architecture.md` §1 — All 5 D3 ADRs validated by Sprint 1 | ✅ | Distinction |
| Rich UML artifacts | Class diagram, Sequence diagram, Data flow diagram in d4-report.md and architecture.md | ✅ | Distinction |
| Feedback from D3 addressed | `docs/D4/d4-report.md` §3.1 — ADR validation table | ✅ | Distinction |

## Criterion 2: Application (25%)

| Rubric Expectation | Evidence Location | Status | Quality |
|--------------------|-------------------|--------|---------|
| Compiles and runs flawlessly | `mvn clean test` → BUILD SUCCESS, 14 tests pass | ✅ | Distinction |
| Excellent functionality | 5 user stories implemented: recording, provenance, protection, descriptive, persistence | ✅ | Distinction |
| Correct outputs | `numericEstimateRetainsMetricAndProvenance` — 10 × 0.716 = 7.160 | ✅ | Distinction |
| Intuitive controls | Google Material You styling, category filter chips, inspector panel | ✅ | Distinction |
| Strong customer value | Complete end-to-end workflow from logging to persistence | ✅ | Distinction |

## Criterion 3: Testing (25%)

| Rubric Expectation | Evidence Location | Status | Quality |
|--------------------|-------------------|--------|---------|
| Excellent comprehensive testing | 14 JUnit 5 tests + 10 CoreSmoke checks | ✅ | Distinction |
| Strong test evidence | `docs/D4/d4-report.md` §5 — full test-to-requirement traceability table | ✅ | Distinction |
| Tests linked to design artifacts | Each test method mapped to US/ADR in traceability table | ✅ | Distinction |
| Edge cases covered | Boundary (max quantity), negative, malformed CSV, invalid boolean, schema mismatch | ✅ | Distinction |

## Criterion 4: Planning (25%)

| Rubric Expectation | Evidence Location | Status | Quality |
|--------------------|-------------------|--------|---------|
| Excellent burndown chart in correct format | `docs/D4/d4-report.md` §2.3 — planned vs actual burndown | ✅ | Distinction |
| Detailed Sprint 2 plan | `docs/D4/sprint-2-plan.md` — 8 tasks, 28 SP, acceptance criteria | ✅ | Distinction |
| Well-justified reprioritisation | `docs/D4/sprint-2-plan.md` §4 — TRAVEL factor and boundary testing justified | ✅ | Distinction |
| Sprint retrospective | `docs/D4/sprint-1-review.md` §6 — Start/Stop/Continue table | ✅ | Distinction |

---

## Overall Assessment

| Criterion | Weight | Evidence Strength | Estimated Band |
|-----------|--------|-------------------|----------------|
| Design | 25% | 5 ADRs validated, 3 refinements, 3 UML diagrams | 80+ |
| Application | 25% | 5 stories done, compiles, runs, correct outputs | 80+ |
| Testing | 25% | 24 tests, full traceability, edge cases | 80+ |
| Planning | 25% | Burndown, Sprint 2 plan, retrospective | 80+ |

---

*Authors: Arnav Mishra (rubric mapping), Keshav Singhal (testing evidence, build verification)*
