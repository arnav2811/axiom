> **FICTIONAL RECONSTRUCTION — AI-created illustrative account. Review and personalise before any formal use.**

# D4 SWOT Analysis

## Strengths
- All 5 Sprint 1 user stories delivered (28/28 SP, 100%)
- 14 JUnit 5 tests pass with BUILD SUCCESS; full test-to-requirement traceability
- Clean Layered Architecture validated — domain tests run headlessly in &lt;200ms
- BigDecimal precision prevents floating-point drift
- Atomic CSV persistence with legacy header migration
- Google Material You styling provides professional, accessible UI

## Weaknesses
- Only ELECTRICITY has numeric emission factors — other categories produce "unavailable"
- FootprintLensApp.java at 938 lines approaches maintainability threshold
- JaCoCo 0.8.12 incompatible with Java 25 — coverage reports not generated
- No integration tests for the full UI-to-persistence cycle
- Action coaching messages are category-generic, not context-specific

## Opportunities
- Add TRAVEL factors from TERI 2023 data to demonstrate breadth (Sprint 2)
- Boundary/partition testing will strengthen D5 testing criterion
- Household aggregation (US-05) enables richer dashboard visualisation
- Factor status badges (US-04) make provenance transparency visible at a glance

## Threats
- 2-person team reduces bus factor — if one member is unavailable, velocity drops 50%
- Scope creep from dashboard features (US-10, US-11) could derail Sprint 2
- TRAVEL emission factor data may require ILLUSTRATIVE marking if TERI source is approximate
- GitLab remote not yet configured — risk of last-minute sync issues
