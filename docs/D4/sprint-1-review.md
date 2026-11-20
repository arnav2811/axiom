# Sprint 1 Review — D4 Increment 1

**Sprint Duration:** 2 weeks (aligned with D4 delivery)
**Sprint Goal:** Deliver core vertical slice — record, estimate, provenance, protection, persistence
**Team:** Arnav Mishra, Keshav Singhal

---

## 1. Sprint Goal Assessment

| Criterion | Target | Result | Evidence |
|-----------|--------|--------|----------|
| Record activity with category, quantity, scope | Working form submission | ✅ Achieved | `saveActivity()`, form validation |
| Transparent emission estimate with provenance | Factor source/year/geography displayed | ✅ Achieved | Detail inspector panel |
| Protected choice handling | Checkbox suppresses advice | ✅ Achieved | `ActionPlanner.suggestion()` returns empty |
| Descriptive circular activities | REPAIR_REUSE produces unavailable estimate | ✅ Achieved | `Estimate.unavailable()` path |
| Local persistence | CSV round-trip verified | ✅ Achieved | `LocalStore.save()/load()`, 3 CSV tests |

**Sprint Goal: FULLY ACHIEVED**

## 2. Story Point Delivery

| Task | Story | Points | Status | Owner | Notes |
|------|-------|:------:|--------|-------|-------|
| T1.1 | US-01 | 5 | ✅ Done | Keshav | Form with 7 categories, validation, error handling |
| T1.2 | US-01 | 3 | ✅ Done | Keshav | Table/list display with category icons and badges |
| T1.3 | US-02 | 2 | ✅ Done | Keshav | Protected checkbox, constraint flag in record |
| T1.4 | US-03 | 5 | ✅ Done | Arnav | Provenance inspector with 7+ detail rows |
| T1.5 | US-07 | 3 | ✅ Done | Arnav | REPAIR_REUSE → Estimate.unavailable() |
| T1.6 | US-12 | 5 | ✅ Done | Keshav | Atomic CSV, header validation, legacy migration |
| T1.7 | — | 3 | ✅ Done | Arnav | 14 JUnit tests (expanded from 10 CoreSmoke) |
| T1.8 | — | 2 | ✅ Done | Keshav | `mvn clean test` passes; run scripts work |
| **Total** | | **28** | **28/28** | | **100% delivery** |

## 3. Burndown Analysis

**Planned velocity:** 28 SP / 10 days = 2.8 SP/day
**Actual:** Completed ahead of schedule (Day 8) due to D3 baseline providing pre-implemented domain model.

Faster completion driven by:
1. `CarbonService` and domain records already functional from D3 baseline
2. `LocalStore` persistence implemented and partially tested
3. Sprint 1 effort focused on UI integration and test expansion

## 4. Acceptance Criteria Verification

### US-01: Record Activity
- [x] Category dropdown shows all 7 categories
- [x] Quantity field rejects empty, negative, and &gt;1,000,000 values
- [x] Scope toggle between PERSONAL and HOUSEHOLD
- [x] Form submits cleanly and updates dashboard

### US-02: Protected Choice
- [x] Checkbox labelled with safety/medical context
- [x] Flag persists in Activity record and CSV
- [x] Protected badge (🛡️) shown in activity list

### US-03: Factor Provenance
- [x] Inspector shows Factor Rate, Source, Year, Geography
- [x] Calculation formula displayed (qty × factor = estimate)
- [x] Data Authority Status shown (VERIFIED/ILLUSTRATIVE)

### US-07: Descriptive Circular
- [x] REPAIR_REUSE category accepted
- [x] Estimate shows "Estimate unavailable" (not zero)
- [x] Context note preserved

### US-12: Local Persistence
- [x] New records saved immediately to CSV
- [x] Application reload shows saved records
- [x] Quoted fields (commas, quotes) handled correctly
- [x] Legacy CARBON-SAATHI header accepted for migration

## 5. Risks Realised

| Risk | Impact | Mitigation Applied |
|------|--------|---------------------|
| JaCoCo 0.8.12 incompatible with Java 25 | Warning logged; coverage report not generated | Tests still execute and pass; JaCoCo upgrade deferred |
| Only ELECTRICITY has numeric factors | Limits demo impact for other categories | By design (epistemic honesty); Sprint 2 adds TRAVEL |

## 6. Sprint Retrospective Actions

| Action | Type | Owner | Sprint |
|--------|------|-------|--------|
| Add boundary/partition testing for all numeric inputs | Start | Arnav | Sprint 2 |
| Upgrade JaCoCo for Java 25 compatibility | Start | Keshav | Sprint 2 |
| Extend numeric factor path to TRAVEL category | Start | Keshav | Sprint 2 |
| Maintain headless-first domain testing | Continue | Both | Sprint 2 |
| Stop adding unplanned UI features during sprint | Stop | Both | Sprint 2 |

---

*Authors: Arnav Mishra (review structure, acceptance verification), Keshav Singhal (burndown analysis, risk assessment)*
