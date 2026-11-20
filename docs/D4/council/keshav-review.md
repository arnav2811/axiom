# D4 Council Review — Keshav Singhal

**Role:** Engineering, architecture, and testing review
**Deliverable reviewed:** D4 — Increment 1

---

## 1. Architecture and Code Quality

**Finding K1:** The domain core (`in.carbon.core`) maintains zero `javafx.*` imports across all 11 classes. Verified by grep and confirmed by headless test execution. ADR-01 invariant preserved. ✅

**Finding K2:** `FootprintLensApp.java` at 938 lines is approaching a size where extraction of controller/view components would improve maintainability. **Recommendation:** Consider extracting `DetailInspectorView`, `ActivityFormController`, and `ActionCoachController` as separate classes in Sprint 2 or 3.

## 2. Build and Test Integrity

**Finding K3:** `mvn clean test` passes with 14 tests, 0 failures. BUILD SUCCESS confirmed. The JaCoCo warning about Java 25 class file version 69 is cosmetic — tests execute correctly despite coverage reporting failure.

**Finding K4:** Test coverage is strong for the domain layer but absent for the UI layer. No integration tests verify the full save → load → display cycle. **Recommendation:** Add at least one integration test in Sprint 2 that creates a Workspace, adds activities, saves, reloads, and verifies state.

## 3. Persistence Robustness

**Finding K5:** `LocalStore` correctly handles:
- Atomic writes (temp file + move)
- Fallback when `ATOMIC_MOVE` is not supported
- Header validation for both `FOOTPRINT-LENS` and legacy `CARBON-SAATHI`
- Malformed CSV detection (3 negative tests)

**Finding K6:** The 16-column CSV schema is tightly coupled to the `Activity` record structure. Schema versioning uses only a header version number "1". **Recommendation:** Document the schema formally and plan for version "2" if fields are added in Sprint 2.

## 4. Calculation Correctness

**Finding K7:** `CarbonService.estimate()` correctly uses `BigDecimal.multiply()` without intermediate rounding. The `totalsByMetric()` method rounds only after aggregation. Test `totalsRoundAfterAggregatingExactValues` specifically verifies this.

**Finding K8:** The `compare()` method correctly prevents comparison of protected activities via `IllegalArgumentException`. This is security-critical — it prevents the UI from accidentally generating punitive comparisons.

## 5. Action Items

| Priority | Action | Owner |
|----------|--------|-------|
| Medium | Extract UI controllers from monolithic FootprintLensApp | Keshav |
| Medium | Add Workspace integration test | Arnav |
| Low | Document CSV schema formally | Keshav |

---

*Keshav Singhal — Council Reviewer*
