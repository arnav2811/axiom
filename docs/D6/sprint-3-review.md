# Sprint 3 Review — Release Candidate Delivery

**Sprint:** 3 (Final)
**Duration:** 10 working days
**Team:** Arnav Mishra, Keshav Singhal
**Goal:** Deliver release-candidate quality application with all features, UI polish, and user guide

---

## 1. Sprint Goal Assessment

> **Sprint Goal:** "Deliver release-candidate quality: data export, dashboard visualisation, factor editing, record management, comprehensive UI polish, all seven categories, and user guide."

**Verdict: ✅ ACHIEVED.** All 7 planned stories delivered. Application is feature-complete.

---

## 2. Story Completion

### US-10: Export Emissions as CSV
- **Owner:** Arnav Mishra
- **Points:** 5
- **Status:** ✅ Done
- **Acceptance Criteria:**
  - [x] User can trigger export from File menu
  - [x] FileChooser dialog for save location
  - [x] CSV is RFC 4180 compliant with headers
  - [x] All recorded activities included
- **Verification:** `ExportTest` — round-trip read-write-read comparison passes

### US-11: Emissions Dashboard with Bar Chart
- **Owner:** Arnav Mishra
- **Points:** 5
- **Status:** ✅ Done
- **Acceptance Criteria:**
  - [x] Bar chart displays total kgCO2e per category
  - [x] Chart updates when new record added
  - [x] Household vs individual totals visible
- **Verification:** Manual UI test; `totalsByMetric()` unit tests

### US-13: Edit and Delete Emission Records
- **Owner:** Keshav Singhal
- **Points:** 5
- **Status:** ✅ Done
- **Acceptance Criteria:**
  - [x] Select record from TableView
  - [x] Edit pre-fills form with existing values
  - [x] Delete shows confirmation dialog
  - [x] Changes persist across sessions
- **Verification:** `LocalStore` CRUD tests; manual session restart test

### US-14: User-Supplied Factor Editor
- **Owner:** Keshav Singhal
- **Points:** 5
- **Status:** ✅ Done
- **Acceptance Criteria:**
  - [x] Factor editor accessible from Tools menu
  - [x] Create factor: name, value, unit, source, category
  - [x] Factor status automatically set to USER_SUPPLIED
  - [x] Custom factors available in recording form
- **Verification:** `FactorEditorTest` — create, update, delete operations pass

### US-15: UI Polish and Accessibility
- **Owner:** Arnav Mishra
- **Points:** 3
- **Status:** ✅ Done
- **Acceptance Criteria:**
  - [x] Full keyboard navigation (Tab, Enter, Escape)
  - [x] High-contrast colour palette (WCAG AA compliant text)
  - [x] Consistent spacing and alignment
  - [x] Form validation messages clear and visible
- **Verification:** Accessibility checklist; keyboard-only navigation test

### US-16: All 7 Emission Categories
- **Owner:** Keshav Singhal
- **Points:** 5
- **Status:** ✅ Done
- **Acceptance Criteria:**
  - [x] All Category enum values selectable: ELECTRICITY, TRAVEL, WATER, FOOD, PACKAGING, WASTE, REPAIR_REUSE
  - [x] Each category has at least one default factor
  - [x] Valid estimates produced for all categories
- **Verification:** Category-specific unit tests; manual form test

### US-17: User Guide
- **Owner:** Arnav Mishra
- **Points:** 2
- **Status:** ✅ Done
- **Acceptance Criteria:**
  - [x] Covers installation and launch
  - [x] Covers all major features
  - [x] Includes troubleshooting section
  - [x] Written for end-users, not developers
- **Verification:** Peer review by Keshav

---

## 3. Burndown Summary

| Day | Planned Remaining | Actual Remaining |
|-----|-------------------|------------------|
| 0 | 30 | 30 |
| 1 | 27 | 28 |
| 2 | 24 | 25 |
| 3 | 21 | 22 |
| 4 | 18 | 18 |
| 5 | 15 | 15 |
| 6 | 12 | 12 |
| 7 | 9 | 8 |
| 8 | 6 | 5 |
| 9 | 3 | 2 |
| 10 | 0 | 0 |

**Velocity:** 30 SP delivered (matches plan)

---

## 4. Sprint Retrospective

### What Went Well
- TDD adopted successfully — tests written before implementation for all new features
- FactorEditor extraction improved code quality and testability
- All 7 categories working end-to-end validates the generalised architecture
- User guide written concurrently with feature development

### What Could Improve
- TestFX still not integrated — UI tests remain manual
- Dashboard performance with 1000+ records untested
- Some factor data sources are ILLUSTRATIVE rather than VERIFIED

### Key Metrics

| Metric | Value |
|--------|-------|
| Stories planned | 7 |
| Stories delivered | 7 |
| Story points planned | 30 |
| Story points delivered | 30 |
| Tests added this sprint | 8 |
| Total tests | 28+ |
| Build status | GREEN |

---

## 5. Definition of Done Verification

| DoD Criterion | US-10 | US-11 | US-13 | US-14 | US-15 | US-16 | US-17 |
|--------------|-------|-------|-------|-------|-------|-------|-------|
| Code complete | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Tests pass | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | N/A |
| Acceptance criteria met | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Peer reviewed | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| No regressions | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Documented | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
