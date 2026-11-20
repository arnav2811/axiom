# D6 Rubric Evidence Matrix

**Deliverable:** D6 — Increment 3 (7% of module mark)

---

## Criterion 1: Working Code (25%)

| Rubric Band | Evidence | Grade Claim |
|-------------|----------|-------------|
| **80+ Distinction** | Application compiles, runs, and all features work correctly. All 7 emission categories produce valid estimates. 28+ tests pass with 0 failures. Data export, dashboard, record management, and factor editor all functional. Build verified with `mvn clean test`. | ✅ Distinction |

**Key Evidence:**
- Build log: 28+ tests, 0 failures, BUILD SUCCESS
- All Category enum values functional: ELECTRICITY, TRAVEL, WATER, FOOD, PACKAGING, WASTE, REPAIR_REUSE
- Features: recording, editing, deleting, exporting, dashboard, coaching, factor editor
- Persistence verified across sessions

**Files:** `New/application/`, `docs/D6/d6-report.md` §3

---

## Criterion 2: Design and Planning (25%)

| Rubric Band | Evidence | Grade Claim |
|-------------|----------|-------------|
| **80+ Distinction** | Architecture evolved across 3 sprints with clear justification. 8 ADRs documented. Updated class diagram with FactorEditor extraction. Sprint 3 burndown shows 30 SP delivered. Cumulative velocity: 86 SP / 86 SP planned (100%). Sprint retrospective with specific improvements. | ✅ Distinction |

**Key Evidence:**
- ADR-006 (CSV export), ADR-007 (Dashboard), ADR-008 (FactorEditor extraction)
- Sprint 3 review with burndown and retrospective
- Requirements traceability matrix showing all 15 user stories mapped across D3-D6
- Updated UML class diagram reflecting final architecture

**Files:** `docs/D6/architecture.md`, `docs/D6/sprint-3-review.md`, `docs/D6/d6-report.md` §4

---

## Criterion 3: Testing (25%)

| Rubric Band | Evidence | Grade Claim |
|-------------|----------|-------------|
| **80+ Distinction** | 28+ tests covering domain logic, boundary/partition (from D5), export round-trip, factor CRUD, coaching constraints. Acceptance criteria verified for all 7 stories. Definition of Done applied. TDD adopted in Sprint 3. | ✅ Distinction |

**Key Evidence:**
- CarbonServiceTest (20+ tests): domain calculations, aggregation, boundary values
- CoreSmoke (10 checks): integration smoke tests
- ExportTest (3): CSV round-trip, empty data, special characters
- FactorEditorTest (3): factor CRUD operations
- ActionPlannerTest (2): constraint protection, category advice
- DoD verification table for all Sprint 3 stories

**Files:** `docs/D6/d6-report.md` §3.4, `docs/D6/sprint-3-review.md` §5

---

## Criterion 4: User Guide (25%)

| Rubric Band | Evidence | Grade Claim |
|-------------|----------|-------------|
| **80+ Distinction** | Concise, user-centred guide covering installation (2 options), all features (recording, dashboard, coaching, factor editor, export), troubleshooting table, keyboard shortcuts. Written for end-users, not developers. Covers all 7 categories with examples. | ✅ Distinction |

**Key Evidence:**
- 11 sections: Introduction, Installation, Getting Started, Recording, Dashboard, Coaching, Factor Editor, Exporting, Data Storage, Troubleshooting, Keyboard Shortcuts
- Category table with example activities and units
- Troubleshooting with common problems and solutions
- Privacy note: data never leaves device
- Accessibility: keyboard shortcuts documented

**Files:** `docs/D6/user-guide.md`
