# D3 Council Review — Keshav Singhal (Engineering, Architecture & Testing)

> **FICTIONAL RECONSTRUCTION — AI-created illustrative review based on the project description, submitted D1/D2 artefacts and COMP2300 specification. This is not independently verified historical evidence. Review and personalise before any formal use.**

**Reviewer:** Keshav Singhal  
**Perspective:** Engineering, architecture, implementation, build, testing  
**Deliverable Under Review:** D3 — Evaluation Plan, Architectural Design and Technical Setup  
**Date:** November 2026

---

## 1. Architecture Assessment

### Strengths
- **Clean Layer Separation** is genuinely enforced — `in.carbon.core` has zero `javafx.*` imports, confirmed by inspecting the actual source code. This is not just documented; it is implemented.
- **5 ADRs** with explicit context → decision → justification → trade-off structure. ADR-03 (BigDecimal) and ADR-04 (no ML) are particularly well-motivated for this domain.
- **4 UML diagrams** (class, sequence, use-case, state machine) provide comprehensive coverage. The class diagram correctly models Java 21 records with `<<record>>` stereotypes.
- The sequence diagram traces the complete flow from user input through estimation, action planning, persistence, and UI update. This is not a vague sketch — it shows actual method calls and return values.

### Concerns
- The class diagram shows `CarbonService` as a utility class with static methods, but the existing code also has instance methods for the deprecated `totals()` path. The diagram should match the actual implementation exactly.
- **Action:** Verify that the class diagram aligns with the actual `CarbonService.java` method signatures. Update if any divergence is found.

## 2. Build and Infrastructure

### Strengths
- Maven `pom.xml` is well-configured: Java 21, OpenJFX 23.0.1, JUnit Jupiter 5.11.4, JaCoCo 0.8.12, Surefire with `useModulePath=false`.
- Run scripts exist: `run-app.bat`, `run-app.ps1`, `run-d3-baseline.bat`.
- `CoreSmoke` test harness: 10 assertion checkpoints covering calculation, provenance, unavailable states, protected choices.
- `CarbonServiceTest`: Additional JUnit 5 tests for specific service methods.

### Concerns
- **GitLab remote is not yet configured.** This is flagged as risk R03 (score 12). The rubric asks for evidence of project infrastructure being "set up." A GitLab remote that hasn't been tested weakens the Project Setup criterion.
- **Action:** Configure GitLab remote, test `git push`, and document the evidence (URL, branch, latest commit) before submission. If permissions are unavailable, prepare exact commands and document the blocker.

## 3. Test Strategy

### Strengths
- Existing test coverage: `CoreSmoke` (10 checks) + `CarbonServiceTest` provide a solid headless test base.
- Tests verify the critical domain invariants: calculation accuracy, provenance integrity, protected choice suppression, unavailable estimate states.
- Build verification: Maven lifecycle (`clean verify`) passes.

### Concerns
- No boundary or partition tests yet — but these are explicitly planned for Sprint 2 (D5), which aligns with the specification's D5 requirement for boundary/partition testing.
- Test coverage percentage is not reported. JaCoCo is configured but coverage reports haven't been reviewed.
- **Action:** Run `mvn verify` and check JaCoCo coverage report before D3 submission. Report baseline coverage %.

## 4. Project Plan Feasibility

### Strengths
- 3-sprint roadmap aligned with D4/D5/D6 is logical and realistic.
- Sprint 1 backlog: 8 tasks, 28 story points, with clear owners and acceptance criteria.
- MoSCoW prioritisation ensures Must-Have stories come first.
- Definition of Ready and Definition of Done are well-defined.

### Concerns
- 28 story points across 10 working days for 2 developers is ambitious. This assumes ~1.4 pts/day/person. If either member has other coursework deadlines, velocity may drop.
- **Action:** Add a velocity adjustment note to the project plan acknowledging that actual velocity may vary, and Sprint 2 planning will be adjusted based on Sprint 1 actual velocity.

## 5. Risk Register

### Strengths
- 10 risks with Likelihood × Impact scoring, early warning triggers, mitigation strategies, contingencies, and owners.
- R01 (team size reduction, score 20) is correctly identified as the highest risk and already has an active mitigation (scope reduction, MoSCoW enforcement).
- R09 (GenAI disclosure, score 10) shows awareness of academic integrity requirements.

### Concerns
- No risk for **the application not compiling on the assessor's machine** at submission time. This is a common failure mode in student projects.
- **Action:** Add R11: "Submission build failure — application does not compile or run on assessor's environment." Mitigation: test on a clean machine, include all dependencies, provide step-by-step build instructions.

## 6. Summary

D3's technical design is robust and well-evidenced. The architecture is clean, the build infrastructure works, and the test harness validates critical domain invariants. Three actionable improvements identified:

1. Verify class diagram matches actual `CarbonService.java`
2. Configure and test GitLab remote
3. Add R11 (submission build failure) to risk register

**Overall Assessment: 80+ Distinction band.** The technical design is thorough and exceeds the rubric's expectation for "rich and appropriate design artifacts clearly linked to decisions."
