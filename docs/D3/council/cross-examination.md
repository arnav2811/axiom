# D3 Council — Cross-Examination

> **FICTIONAL RECONSTRUCTION — AI-created illustrative cross-examination based on the project description, submitted D1/D2 artefacts and COMP2300 specification. This is not independently verified historical evidence. Review and personalise before any formal use.**

**Date:** November 2026  
**Participants:** Arnav Mishra, Keshav Singhal

---

## 1. Arnav Challenges Keshav's Review

### Challenge 1: Class Diagram Fidelity

**Arnav:** Keshav notes that `CarbonService` is shown as a utility class with static methods, but flags a discrepancy with the deprecated `totals()` method. I want to push back — the class diagram represents the **intended architecture**, not necessarily every historical method. The deprecated `totals()` is explicitly marked `@Deprecated` in the codebase and callers should use `totalsByMetric()`. Should we include deprecated methods in a forward-looking architectural diagram?

**Keshav's Response:** Fair point. The architecture document should represent the target design, not legacy debt. However, we should add a brief note in the architecture document stating that `totals()` exists as a backward-compatibility shim and is deprecated. This prevents an assessor from thinking we don't know our own codebase.

**Resolution:** Add a 1-line note under ADR-03 or the class diagram explaining that `totals()` is a deprecated compatibility helper. ✅ **Agreed.**

### Challenge 2: GitLab Configuration Priority

**Arnav:** Keshav rates GitLab as a concern for the Project Setup criterion, but the specification says "set up your project management and development environment, including your GitLab repository." This is an explicit requirement. I'd rate this higher than a concern — it's potentially mark-losing if the assessor sees no GitLab evidence at all.

**Keshav's Response:** Agreed. I'll prioritise configuring the GitLab remote before submission. If I can't get access due to permissions, I'll prepare the exact push commands and document the blocker explicitly.

**Resolution:** GitLab configuration is elevated to **high priority** before D3 submission. ✅ **Agreed.**

---

## 2. Keshav Challenges Arnav's Review

### Challenge 1: Evaluation Protocol Versioning

**Keshav:** Arnav recommends adding a note that the evaluation protocol will be updated if the prototype changes. This is sensible, but I want to challenge whether we're setting expectations too loosely. If we tell the assessor "this might change," does that undermine the "rich detail" claim? The rubric rewards "rich detail" — not "rich detail that might change."

**Arnav's Response:** The note is about academic honesty. We're at D3; the final prototype won't exist until D6. If we claim these are the definitive tasks but the UI changes significantly, that's misleading. A brief note saying "materials will be reviewed to match the final prototype" shows methodological awareness, not weakness. The spec itself says "You may update your evaluation plan if necessary" for D7.

**Resolution:** Keep the versioning note, framed positively: "These materials are designed to be stable but will be reviewed against the final prototype's interface before D7 execution, as permitted by the specification." ✅ **Agreed.**

### Challenge 2: Sprint Velocity Assumption

**Keshav:** Arnav's review didn't flag the sprint velocity concern I raised (28 points / 10 days / 2 people). Do you agree this is realistic, or should we reduce the Sprint 1 scope?

**Arnav's Response:** The stories are well-scoped and the existing codebase already implements much of the domain logic (CarbonService, Factor, Estimate are all working). Sprint 1 is primarily about wiring the existing domain to the UI and adding the provenance view. I think 28 points is achievable, but I agree we should acknowledge velocity uncertainty and plan to adjust Sprint 2 based on Sprint 1 actuals.

**Resolution:** Add a velocity adjustment note to the project plan. Do not reduce Sprint 1 scope. ✅ **Agreed.**

---

## 3. Summary of Actions from Cross-Examination

| # | Action | Owner | Priority | Source |
|---|--------|-------|----------|--------|
| 1 | Add note about deprecated `totals()` in architecture document | Keshav | Medium | Challenge 1 |
| 2 | Configure and test GitLab remote before D3 submission | Keshav | **High** | Challenge 2 |
| 3 | Add protocol versioning note in evaluation plan | Arnav | Low | Challenge 1 |
| 4 | Add velocity adjustment note to project plan | Arnav | Low | Challenge 2 |
| 5 | Strengthen EQ4 D1 link in evaluation protocol | Arnav | Low | Arnav review finding |
| 6 | Add R11 (submission build failure) to risk register | Keshav | Medium | Keshav review finding |
| 7 | Run JaCoCo and report baseline coverage | Keshav | Medium | Keshav review finding |
