# D6 SWOT Analysis — Sprint 3 Retrospective

> **⚠ FICTIONAL RECONSTRUCTION:** This SWOT analysis is a simulated reconstruction for assessment portfolio completeness.

---

## Strengths

| # | Strength | Evidence |
|---|----------|----------|
| S1 | Feature-complete application | All 7 categories, dashboard, export, factor editor, record management, coaching |
| S2 | TDD adopted and effective | Tests written before implementation; caught special character and persistence bugs |
| S3 | Clean architecture maintained | FactorEditor extraction reduces complexity; 3-layer design preserved |
| S4 | Comprehensive user guide | 11 sections, troubleshooting, keyboard shortcuts — written for end-users |
| S5 | Consistent velocity | 86 SP delivered across 3 sprints (28 + 28 + 30) at 100% completion |

## Weaknesses

| # | Weakness | Impact | Mitigation |
|---|----------|--------|------------|
| W1 | No UI automation testing | Manual UI testing is slow and potentially inconsistent | Accept for assessment; recommend TestFX for future |
| W2 | Dashboard performance untested | May be slow with 1000+ records | Add note to user guide; acceptable for assessment scope |
| W3 | Some factors are ILLUSTRATIVE | Not all emission factors are verified by official sources | Clearly displayed via FactorStatus badges |
| W4 | 2-person team constraints | Less review capacity; bus factor is 1 for some features | Council review process compensates |

## Opportunities

| # | Opportunity | Plan |
|---|-------------|------|
| O1 | D7 user evaluation | Real user feedback will identify usability issues for improvement |
| O2 | Mobile/web version | Architecture could support a web frontend (REST API over domain layer) |
| O3 | Community factor database | Allow users to share verified emission factors |
| O4 | Integration with utility providers | Auto-import electricity/water bills for automatic recording |

## Threats

| # | Threat | Likelihood | Impact | Mitigation |
|---|--------|-----------|--------|------------|
| T1 | D7 evaluation recruitment | Medium | High | Start recruitment early; reach out to multiple groups |
| T2 | Participant unfamiliarity with concept | Low | Medium | Information sheet explains carbon footprint concept |
| T3 | Application bugs during evaluation | Low | High | Pre-evaluation testing on evaluation machine |
| T4 | Time pressure for D7 report | Medium | Medium | Prepare blank analysis templates in advance |
