# D4 Learning Outcomes

---

## LO-D4-01: Architectural Validation Through Implementation

**What was learned:** The D3 Clean Layered Architecture (ADR-01 through ADR-05) was confirmed as sound through Sprint 1 implementation. All 14 tests run headlessly in &lt;200ms without requiring a display server.

**Evidence:** `mvn clean test` → BUILD SUCCESS. Zero `javafx.*` imports in domain core.

**Assumption changed:** We initially assumed the architecture might need refinement once real UI integration began. It didn't — the strict layer separation prevented coupling issues.

**Applied going forward:** Maintain the invariant. If a domain class needs UI types, refactor the dependency, don't relax the rule.

## LO-D4-02: Epistemic Honesty in Factor Design

**What was learned:** Restricting numeric factors to only ELECTRICITY (where verified CEA data exists) is a strength, not a limitation. It prevents false precision in categories where Indian emission factors are unavailable or approximate.

**Evidence:** `Estimate.unavailable()` path for FOOD, WATER, PACKAGING, WASTE, REPAIR_REUSE categories.

**Improvement:** Sprint 2 extends the numeric path to TRAVEL using TERI data, maintaining the provenance requirement.

## LO-D4-03: BigDecimal Precision Matters

**What was learned:** Floating-point arithmetic (0.1 + 0.2 ≠ 0.3) would have introduced cumulative drift in carbon totals. BigDecimal with explicit `RoundingMode.HALF_UP` ensures deterministic results.

**Evidence:** `totalsRoundAfterAggregatingExactValues` test — two 0.0005 values aggregate to 0.001, not 0.000999...

## LO-D4-04: Test Evidence Must Map to Requirements

**What was learned:** The D4 rubric explicitly rewards "tests linked to design artifacts." Creating a test-to-requirement traceability table (14 test methods → stories/ADRs) strengthens the evidence significantly.

**Evidence:** D4 report §5.2 traceability table.

## LO-D4-05: Sprint Velocity and Estimation Calibration

**What was learned:** Sprint 1 achieved 100% delivery (28/28 SP) partly because the D3 baseline provided pre-implemented domain logic. This inflated velocity may not be sustainable in Sprint 2 where more greenfield work is needed. Sprint 2 should use 28 SP as an optimistic ceiling, not a guaranteed baseline.
