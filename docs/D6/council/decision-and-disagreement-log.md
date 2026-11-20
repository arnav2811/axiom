# D6 Decision and Disagreement Log

> **⚠ FICTIONAL RECONSTRUCTION:** This log is a simulated record of team decisions for assessment portfolio completeness.

---

## Decisions

### Decision D6-D1: CSV Export Format
**Date:** Sprint 3, Day 1
**Participants:** Arnav, Keshav
**Decision:** Reuse `LocalStore` CSV format for export rather than creating a new JSON or XML format
**Rationale:** Consistency with internal storage; RFC 4180 compliance; minimal new code
**Alternatives Considered:** JSON export (rejected — overkill for tabular data); PDF export (rejected — requires external library)
**Status:** Accepted ✅

### Decision D6-D2: JavaFX BarChart vs External Library
**Date:** Sprint 3, Day 2
**Participants:** Arnav, Keshav
**Decision:** Use JavaFX built-in `BarChart` for dashboard visualisation
**Rationale:** No external dependency; native look and feel; sufficient for assessment scope
**Alternatives Considered:** JFreeChart (rejected — adds dependency); D3.js in WebView (rejected — complexity)
**Status:** Accepted ✅

### Decision D6-D3: FactorEditor Extraction
**Date:** Sprint 3, Day 3
**Participants:** Keshav (proposed), Arnav (approved)
**Decision:** Extract factor management into separate `FactorEditor` class
**Rationale:** `FootprintLensApp` exceeded 900 lines; factor CRUD is a distinct concern; enables independent testing
**Status:** Accepted ✅

### Decision D6-D4: TestFX Deferral (Final)
**Date:** Sprint 3, Day 5
**Participants:** Arnav, Keshav
**Decision:** Defer TestFX integration permanently — manual UI testing is sufficient for assessment scope
**Rationale:** Adding TestFX at this stage risks destabilising the build; 28+ unit/integration tests provide adequate coverage; D7 evaluation will provide real user interaction data
**Status:** Accepted ✅

### Decision D6-D5: User Guide Scope
**Date:** Sprint 3, Day 7
**Participants:** Arnav (proposed), Keshav (reviewed)
**Decision:** User guide covers all implemented features with troubleshooting; does not include developer documentation
**Rationale:** Rubric asks for "user guide" — developer docs are in architecture.md and README
**Status:** Accepted ✅

---

## Disagreements

### Disagreement D6-DIS-1: Dashboard Chart Type

**Topic:** Whether to use bar chart or pie chart for category emissions display
**Arnav's Position:** Bar chart — easier to compare magnitudes across categories; standard for comparative data
**Keshav's Position:** Pie chart — shows proportional contribution; more visually appealing
**Discussion:** Arnav cited data visualisation research (Cleveland & McGill, 1984) showing bar charts outperform pie charts for magnitude comparison. Keshav agreed after reviewing the evidence.
**Resolution:** Bar chart selected. Both satisfied.
**Impact:** None — resolved during Sprint 3 planning.
