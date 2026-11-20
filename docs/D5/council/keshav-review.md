# D5 Council Review — Keshav Singhal

**Role:** Engineering, architecture, testing
**Deliverable:** D5 — Increment 2

---

## Findings

**K1:** The Activity constructor modification for TRAVEL is clean and minimal. The guard condition `category != Category.ELECTRICITY && category != Category.TRAVEL` correctly gates the factor path. No regression detected — all existing tests pass.

**K2:** `totalsByMetric()` correctly aggregates household and personal totals separately. The dashboard displays these without per-capita division, complying with ISO 14064-1 and the D2 design principle DP4 (Communal Boundary Integrity).

**K3:** Boundary testing is well-structured with equivalence partitions and boundary value analysis tables. The existing test `activityRejectsQuantityAboveDocumentedBoundary` already covered the max boundary; Sprint 2 adds zero and negative boundary tests.

**K4:** The DoD is comprehensive (8 points) and applied to every story. This is the strongest improvement from D4.

**K5:** `FootprintLensApp.java` remains at ~938 lines. The D4 council deferred UI extraction to Sprint 3. With Sprint 3 adding dashboard (US-10), the file will grow further. Extraction should be prioritised.

## Action Items

| Priority | Action | Owner |
|----------|--------|-------|
| High | Extract dashboard view from FootprintLensApp | Keshav |
| Medium | Ensure TRAVEL factor test covers all provenance fields | Keshav |
| Low | Update CSV schema version if adding new fields | Keshav |

---

*Keshav Singhal — Council Reviewer*
