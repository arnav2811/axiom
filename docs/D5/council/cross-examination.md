# D5 Council Cross-Examination

---

## Arnav challenges Keshav

**Challenge AC-1:** K5 again recommends UI extraction. We deferred this in D4. With only one sprint remaining, is now the time?

**Keshav's response:** The dashboard (US-10) will add ~100 lines. If we extract during US-10 implementation (not as a separate refactoring task), it's zero additional overhead. I'll create the dashboard as a separate method group rather than adding to the existing monolith.

## Keshav challenges Arnav

**Challenge KC-1:** A3 notes missing negative factor boundary test. But the Factor record constructor already throws `IllegalArgumentException` for `value.signum() <= 0`. Is a dedicated test needed?

**Arnav's response:** Yes — the constructor enforcement is the implementation, but the test is the evidence. Without a named test method, we can't claim boundary coverage in the rubric matrix. I'll add `negativeFactorRejected` and `zeroFactorRejected` test methods.

---

## Agreed Resolutions
1. Dashboard implemented as extracted method group — both agree
2. Negative/zero factor boundary tests to be added — both agree
