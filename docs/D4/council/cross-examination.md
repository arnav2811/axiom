# D4 Council Cross-Examination

---

## Arnav challenges Keshav

**Challenge AC-1:** Keshav's Finding K2 recommends extracting controller classes from FootprintLensApp. However, in a 2-person team with 3 sprints remaining, is the refactoring effort justified? The current monolithic structure is functional and velocity may be better spent on features.

**Keshav's response:** Fair point. The extraction is a "should" not a "must." I'll scope it as a Sprint 3 cleanup task if velocity permits. For Sprint 2, I'll focus on feature delivery (US-04, US-05, US-06) rather than refactoring.

**Challenge AC-2:** Keshav's K6 notes CSV schema coupling but doesn't address backward compatibility concretely. If we add fields in Sprint 2, old CSV files won't load.

**Keshav's response:** The existing code already handles backward compatibility — `load()` accepts both `FOOTPRINT-LENS,1` and `CARBON-SAATHI,1` headers with different column counts (15 vs 16). We'll use `FOOTPRINT-LENS,2` for any schema extension and add a migration path in `load()`.

## Keshav challenges Arnav

**Challenge KC-1:** Arnav's Finding A3 demands TRAVEL factors in Sprint 2, but the `Activity` constructor explicitly throws `IllegalArgumentException` if a factor is provided for non-ELECTRICITY categories (Activity.java line 20-21). This is a code change, not just data addition. What's the migration plan?

**Arnav's response:** Correct — the constructor guard must be relaxed to allow factors for TRAVEL as well. The change is minimal: extend the condition to `category != Category.ELECTRICITY && category != Category.TRAVEL`. Factor provenance requirements remain identical. The Factor record itself is category-agnostic.

**Challenge KC-2:** Arnav's report presents "24 total tests" (14 JUnit + 10 CoreSmoke), but CoreSmoke is a standalone runner, not a JUnit test executed by Maven. Can we legitimately count it in the total?

**Arnav's response:** Valid challenge. CoreSmoke is a dependency-free smoke runner for environments without Maven/JUnit. It tests the same domain logic but with different assertions. I'll clarify in the report that "14 JUnit 5 tests pass via `mvn test`" is the primary evidence, with CoreSmoke as supplementary validation.

---

## Agreed Resolutions

1. UI refactoring deferred to Sprint 3 — both agree
2. TRAVEL factor requires Activity constructor modification — both agree on approach
3. Test count reported as "14 JUnit 5 tests" primary, CoreSmoke supplementary — both agree
4. CSV schema migration planned for `FOOTPRINT-LENS,2` — both agree
