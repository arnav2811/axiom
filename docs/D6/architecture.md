# D6 Architecture — Final Release Candidate

**Version:** v1.0.0-rc
**Sprint:** 3 (Final)
**Authors:** Arnav Mishra, Keshav Singhal

---

## 1. Architecture Overview

Footprint Lens follows a **clean layered architecture** with strict dependency flow: UI → Domain → Persistence. No upward dependencies exist. The architecture has evolved through three sprints:

| Layer | Responsibility | Key Classes |
|-------|---------------|-------------|
| **UI** | User interaction, form handling, visualisation | `FootprintLensApp`, `FactorEditor`, Dashboard |
| **Domain** | Business logic, calculations, coaching | `CarbonService`, `ActionPlanner`, records |
| **Persistence** | Data storage, export | `LocalStore`, `Workspace` |

## 2. Sprint 3 Design Refinements

### DR-06: CSV Export via LocalStore Reuse

**Decision:** Reuse `LocalStore`'s existing CSV format for the export feature.
**Rationale:** The `records.csv` persistence format is already RFC 4180 compliant. Exporting to a user-chosen location requires only a `FileChooser` dialog and a file copy/write operation. No new data format needed.
**Trade-off:** Export format is tied to internal storage format. If we change persistence, export changes too. Acceptable for this scope.

### DR-07: JavaFX BarChart for Dashboard

**Decision:** Use JavaFX's built-in `BarChart<String, Number>` for the emissions dashboard.
**Rationale:** Native JavaFX component — no external dependency. Renders category-wise totals with automatic axis scaling. Integrates with the existing `totalsByMetric()` aggregation.
**Trade-off:** Limited customisation compared to third-party charting libraries. Sufficient for assessment scope.

### DR-08: FactorEditor as Separate Component

**Decision:** Extract factor management into a dedicated `FactorEditor` class.
**Rationale:** Single Responsibility Principle — `FootprintLensApp` was growing too large (938 lines in D4). Factor CRUD operations are distinct from emission recording. Testable independently.
**Trade-off:** Slight increase in class count. Improves maintainability and testability.

## 3. Architectural Decision Records (Sprint 3)

### ADR-006: CSV Export Format

| Field | Value |
|-------|-------|
| **Status** | Accepted |
| **Context** | Users need to export their emission data for external analysis or record-keeping |
| **Decision** | Reuse LocalStore CSV format; add `exportCsv(Path)` method |
| **Consequences** | Minimal new code; consistent format; couples export to persistence format |
| **Requirement** | US-10 |

### ADR-007: Dashboard Visualisation

| Field | Value |
|-------|-------|
| **Status** | Accepted |
| **Context** | Users want a visual overview of their emissions by category |
| **Decision** | JavaFX `BarChart` with category on X-axis, kgCO2e on Y-axis |
| **Consequences** | No external dependencies; native look; limited chart types |
| **Requirement** | US-11 |

### ADR-008: Factor Editor Extraction

| Field | Value |
|-------|-------|
| **Status** | Accepted |
| **Context** | `FootprintLensApp` exceeds 900 lines; factor management is a distinct concern |
| **Decision** | Extract `FactorEditor` class with its own FXML (or programmatic) layout |
| **Consequences** | Cleaner separation; independently testable; slight refactoring effort |
| **Requirement** | US-14, code quality |

## 4. Final Component Diagram

```
┌─────────────────────────────────────────────────────┐
│                    JavaFX Runtime                     │
│  ┌──────────────────┐  ┌──────────┐  ┌───────────┐  │
│  │FootprintLensApp  │  │FactorEdit│  │ Dashboard │  │
│  │  - Forms         │  │  - CRUD  │  │ - BarChart│  │
│  │  - Table         │  │  - Valid. │  │ - Totals  │  │
│  │  - Navigation    │  └────┬─────┘  └─────┬─────┘  │
│  └────────┬─────────┘       │              │         │
│           │                 │              │         │
├───────────┼─────────────────┼──────────────┼─────────┤
│           ▼                 ▼              ▼         │
│  ┌──────────────┐  ┌──────────────┐  ┌───────────┐  │
│  │CarbonService │  │ ActionPlanner│  │  Records  │  │
│  │  - estimate() │  │ - suggestion│  │ Activity  │  │
│  │  - totals()  │  │ - isProtect.│  │ Factor    │  │
│  │  - compare() │  └──────────────┘  │ Estimate  │  │
│  └──────┬───────┘                    │ ActionPlan│  │
│         │                            └───────────┘  │
├─────────┼───────────────────────────────────────────┤
│         ▼                                           │
│  ┌──────────────┐  ┌──────────────┐                 │
│  │  LocalStore   │  │  Workspace   │                 │
│  │  - save()     │  │  - dataDir() │                 │
│  │  - loadAll()  │  │  - ensure()  │                 │
│  │  - delete()   │  └──────────────┘                 │
│  │  - exportCsv()│                                   │
│  └──────────────┘                                   │
│         │                                           │
│         ▼                                           │
│  ~/.footprint-lens/records.csv                      │
└─────────────────────────────────────────────────────┘
```

## 5. Requirements Traceability (Final)

| Requirement | D3 Design | D4 Implementation | D5 Testing | D6 Completion |
|-------------|-----------|-------------------|------------|---------------|
| US-01 Record electricity | ADR-001 | ✅ Activity + Factor | ✅ 14 tests | ✅ Maintained |
| US-02 View emissions list | ADR-002 | ✅ TableView | ✅ Smoke tests | ✅ Maintained |
| US-03 Persist across sessions | ADR-003 | ✅ LocalStore CSV | ✅ Persistence tests | ✅ Maintained |
| US-04 Factor badges | ADR-004 | — | ✅ Sprint 2 | ✅ All 3 statuses |
| US-05 Household aggregate | ADR-005 | — | ✅ Sprint 2 | ✅ Dashboard view |
| US-06 Multi-category | — | — | ✅ Sprint 2 | ✅ All 7 categories |
| US-07 India-specific factors | ADR-001 | ✅ TERI data | ✅ Factor tests | ✅ TERI sourced |
| US-08 Reduction advice | — | — | ✅ Sprint 2 | ✅ Coaching tab |
| US-09 No punitive coaching | — | — | ✅ Constraint test | ✅ Protected |
| US-10 Data export | — | — | — | ✅ CSV export |
| US-11 Dashboard charts | — | — | — | ✅ BarChart |
| US-12 View estimate detail | ADR-002 | ✅ Detail panel | ✅ Smoke | ✅ Maintained |
| US-13 Edit/delete records | — | — | — | ✅ CRUD complete |
| US-14 Factor editor | — | — | — | ✅ User factors |
| US-15 UI accessibility | — | — | — | ✅ KB nav, contrast |

## 6. Quality Attributes

| Attribute | Measure | Status |
|-----------|---------|--------|
| **Correctness** | All 28+ tests pass | ✅ |
| **Usability** | 7 categories, coaching, dashboard | ✅ |
| **Maintainability** | <1000 lines per class; 3 layers | ✅ |
| **Portability** | Java 21 + JavaFX 23 cross-platform | ✅ |
| **Data Integrity** | RFC 4180 CSV; no data loss on edit/delete | ✅ |
| **Accessibility** | Keyboard navigation; high-contrast | ✅ |
