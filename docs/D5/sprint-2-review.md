# Sprint 2 Review — D5 Increment 2

**Sprint Duration:** 2 weeks (aligned with D5 delivery)
**Sprint Goal:** Household aggregate, action coaching, factor badges, multi-category, boundary testing
**Team:** Arnav Mishra, Keshav Singhal

---

## 1. Sprint Goal Assessment

| Criterion | Target | Result |
|-----------|--------|--------|
| Household aggregate total | Undivided total shown on dashboard | ✅ Achieved |
| Action coaching with constraint respect | Category-specific advice; protected suppressed | ✅ Achieved |
| Factor verification badges | VERIFIED/ILLUSTRATIVE/USER_SUPPLIED visible | ✅ Achieved |
| Multi-category recording | Form clears; immediate re-entry | ✅ Achieved |
| TRAVEL numeric factor | TERI-sourced factor produces estimate | ✅ Achieved |
| Boundary/partition testing | 6+ boundary tests pass | ✅ Achieved |

**Sprint Goal: FULLY ACHIEVED**

## 2. Story Point Delivery

| Task | Story | Points | Status | Owner |
|------|-------|:------:|--------|-------|
| T2.1 | US-05 | 5 | ✅ Done | Keshav |
| T2.2 | US-08 | 5 | ✅ Done | Arnav |
| T2.3 | US-09 | 3 | ✅ Done | Arnav |
| T2.4 | US-04 | 3 | ✅ Done | Keshav |
| T2.5 | US-06 | 3 | ✅ Done | Keshav |
| T2.6 | — | 5 | ✅ Done | Arnav |
| T2.7 | — | 3 | ✅ Done | Arnav |
| T2.8 | — | 1 | ✅ Done | Keshav |
| **Total** | | **28** | **28/28** | |

## 3. Acceptance Criteria Verification

### US-05: Household Aggregate
- [x] Household total shown as undivided collective total
- [x] Not divided per person (ISO 14064-1 compliance)
- [x] Separated from Personal total on dashboard

### US-08: Action Coaching
- [x] Category-specific advice for ELECTRICITY, TRAVEL, WATER, FOOD
- [x] Descriptive guidance for PACKAGING, WASTE, REPAIR_REUSE
- [x] No unsupported carbon-saving claims

### US-09: Protected Choice Enforcement
- [x] `ActionPlanner.suggestion()` returns `Optional.empty()` for protected activities
- [x] `CarbonService.compare()` throws IllegalArgumentException for protected
- [x] UI displays "protected, no punitive advice" message

### US-04: Factor Status Badge
- [x] VERIFIED, ILLUSTRATIVE, USER_SUPPLIED labels visible in inspector
- [x] `FactorStatus.label()` provides human-readable text

### US-06: Multi-Category Recording
- [x] Form clears after successful save
- [x] Category dropdown and quantity field reset
- [x] User can immediately record a different category

## 4. Sprint Retrospective

| Start | Stop | Continue |
|-------|------|----------|
| Acceptance testing against D2 personas | Deferring accessibility | Test-to-requirement traceability |
| User guide planning for Sprint 3 | Adding unplanned features | BigDecimal precision |
| Integration testing | | Boundary testing |

---

*Authors: Arnav Mishra (review, acceptance verification), Keshav Singhal (story delivery, DoD)*
