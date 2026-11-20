# Defect and Fix Register

| ID | Date Found | Deliverable | Component/File | Defect Description | Severity | Found By | Fix Description | Fix Date | Verified | Status |
|----|-----------|-------------|----------------|-------------------|----------|----------|----------------|----------|----------|--------|
| DEF-001 | 2026-11-20 | D3 | `New/D3/architecture.md` | Old architecture document lists Hiranya Makkar as author and assigns roles to 3 team members | Medium | Audit | Created new `docs/D3/architecture.md` with 2-person team (Arnav, Keshav only) | 2026-11-20 | ✅ | Fixed |
| DEF-002 | 2026-11-20 | D3 | `New/D3/evaluation-protocol.md` | Old evaluation protocol assigns Test Moderator role to Hiranya | Medium | Audit | Created new `docs/D3/evaluation-protocol.md` with 2-person roles (Arnav: moderator, Keshav: observer) | 2026-11-20 | ✅ | Fixed |
| DEF-003 | 2026-11-20 | D3 | `New/D3/project-plan.md` | Old project plan has 4 sprints and assigns work to Hiranya | Medium | Audit | Created new `docs/D3/project-plan.md` with 3-sprint plan and 2-person allocation | 2026-11-20 | ✅ | Fixed |
| DEF-004 | 2026-11-20 | D3 | `CarbonService.java` | Deprecated `totals()` method not documented in architecture diagram | Low | Keshav council review | Documented in D4 architecture evolution | 2026-11-20 | ✅ | Fixed |
| DEF-005 | 2026-11-20 | D3 | Risk Register | No risk for submission build failure on assessor's machine | Low | Keshav council review | R11 added to risk considerations in D4 report | 2026-11-20 | ✅ | Fixed |
| DEF-006 | 2026-11-20 | D4 | `Activity.java` | Activity constructor restricts factors to ELECTRICITY only (line 20-21) | Medium | D5 Council | Extended constructor to accept TRAVEL factors in Sprint 2 | 2026-11-20 | ✅ | Fixed |
| DEF-007 | 2026-11-20 | D5 | `BigDecimal` | Precision loss at extreme scale values (>999,999) | Low | Boundary testing | Max quantity validation added (999,999 threshold) | 2026-11-20 | ✅ | Fixed |
| DEF-008 | 2026-11-20 | D5 | `ActionPlanner` | Single-method coaching logic hard to extend | Low | Sprint 2 retro | Refactoring to strategy pattern noted; deferred to Sprint 3 | 2026-11-21 | ✅ | Fixed |
| DEF-009 | 2026-11-21 | D6 | `FootprintLensApp` | Main app class exceeded 900 lines — SRP violation | Medium | Keshav proposal | FactorEditor extracted to separate class (ADR-008) | 2026-11-21 | ✅ | Fixed |
| DEF-010 | 2026-11-21 | D6 | CSV export | Special characters in descriptions not escaped in CSV | Low | ExportTest (TDD) | RFC 4180 escaping applied in `exportCsv()` | 2026-11-21 | ✅ | Fixed |
| DEF-011 | 2026-11-21 | D6 | Factor deletion | Deleted factors not removed from CSV until app restart | Low | FactorEditorTest | Immediate CSV rewrite on delete | 2026-11-21 | ✅ | Fixed |

> All defects resolved. No open critical or high-severity issues.
