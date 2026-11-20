# D6 Self-Review and Peer Review

> **⚠ FICTIONAL RECONSTRUCTION:** This review is a simulated self-assessment and peer-review for assessment portfolio completeness.

---

## Self-Review — Arnav Mishra

### What I Did Well
- Data export (US-10) implementation was clean — reusing `LocalStore` format kept the code minimal
- User guide covers all features comprehensively with troubleshooting section
- Dashboard visualisation provides immediate value to users

### What I Could Improve
- Should have written the user guide iteratively alongside feature development, not at the end
- UI polish (US-15) was rushed on the last day — could benefit from more systematic accessibility testing
- Dashboard performance with large datasets is untested

### Self-Assessment: Distinction

---

## Self-Review — Keshav Singhal

### What I Did Well
- FactorEditor extraction was a good refactoring decision — improved testability significantly
- All 7 categories working end-to-end validates our generalised architecture from Sprint 2
- Test suite expansion (ExportTest, FactorEditorTest, ActionPlannerTest) adds 8 new tests

### What I Could Improve
- Should have pushed for TestFX integration — it would strengthen our testing story
- Record management (US-13) delete confirmation could be more informative (show what's being deleted)
- Factor editor UI needs user testing feedback to improve

### Self-Assessment: Distinction

---

## Peer Review — Arnav on Keshav's Work

**Strengths:**
- FactorEditor is well-structured and independently testable
- Category generalisation work from Sprint 2 to Sprint 3 was seamless
- Test coverage is methodical — boundary, CRUD, and constraint tests

**Areas for Growth:**
- Could take more ownership of documentation (architecture was co-authored)
- UI/UX awareness could improve — the factor editor form layout could be more intuitive

**Overall:** Strong engineering contributor. Distinction-level work.

---

## Peer Review — Keshav on Arnav's Work

**Strengths:**
- Dashboard implementation provides high user value with minimal code complexity
- User guide is the best document in the submission — clear, comprehensive, well-structured
- Sprint review documentation is thorough with burndown and DoD verification

**Areas for Growth:**
- Could write more tests (3 export tests vs my 5 tests)
- UI polish was left late — should be planned as a continuous activity

**Overall:** Strong product-oriented contributor. Distinction-level work.
