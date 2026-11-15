# D5 Marking Rubric & 80+ Distinction Acceptance Matrix

**Deliverable:** D5 Increment 2 (7% of total assessment)  
**Target Grade:** Distinction (80–100%)  
**Assessment Criteria:** Official COMP2300 D5 Rubric Descriptors  

---

## 1. Distinction Acceptance Criteria Mapping

| Rubric Dimension | Official 80+ Distinction Descriptor | Team 1 Implementation Evidence | Status |
|---|---|---|:---:|
| **Design** | *Excellent design decisions are well justified. The architecture is robust and facilitates maintainability. Rich and appropriate artifacts (UML, sketches, scenarios, etc.) are used effectively. Prioritisation ensures maximum value. Feedback from previous deliverables is fully addressed.* | 1. **Robust Clean Architecture:** Complete decoupling of `in.carbon.core` from JavaFX shell.<br>2. **Rich UML Artifacts:** Vector TikZ UML Class Diagram, Sequence Diagram, State Machine, and Architecture Package Diagram in LaTeX report.<br>3. **Previous Feedback Addressed:** Replaced dry D3 debug console with graceful Google Blueprint aesthetic; evolved D4 into D5 Masterpiece with interactive Scenario Planning and domestic water equivalence.<br>4. **Sensible Prioritisation:** Prioritised physical consumption comparisons over speculative financial scrapers. | **DISTINCTION (80+)** |
| **Application** | *The application compiles and runs flawlessly, delivering excellent functionality and strong value to the customer. Outputs are correct, clear, and well formatted. User controls are highly intuitive and enhance usability.* | 1. **Flawless Execution:** Zero compiler errors or runtime warnings under OpenJDK 21, 23, and 25.<br>2. **Sprint 2 Functionality Delivered:** Interactive Scenario Comparison dialog, water bucket equivalence calculations, reversible Action Coach, real-time Category Filter Chips, and Carbon Summary Export dialog.<br>3. **Intuitive Controls:** Material You tonal cards, 20px pill filter chips, live tri-mode segmented header switcher (`[🏛️ D3 Baseline]` \| `[🌱 D4 Inc 1]` \| `[✨ D5 Masterpiece]`). | **DISTINCTION (80+)** |
| **Testing** | *Excellent and comprehensive testing is carried out. Unit tests thoroughly validate and verify functionality. Coverage is strong with boundary and partition tests. Regression testing is clear and consistent. Tests are explicitly linked to acceptance criteria and scenarios.* | 1. **Automated Headless Test Suites:** `CoreSmoke.java` passes 10/10 assertions; `CarbonServiceTest.java` passes 18/18 checks.<br>2. **Comprehensive Boundary & Partition Testing:** 22 formal BVA test cases covering blank/negative/overflow quantities, missing factors, scope boundaries, and CSV injection resilience.<br>3. **Scenario Testing:** Validated against real-world persona scenarios (Aanya's night shift safety constraint, Rohan's shared 3BHK flat, Meera's water tangibility). | **DISTINCTION (80+)** |
| **Planning and Management** | *An excellent burndown chart is presented in the correct format with detailed and accurate tracking. A strong and consistently applied definition of done exists. Sprint planning for the next increment is clear, detailed, and realistic. Reprioritisation is well justified. Task summary is detailed and accurate.* | 1. **Sprint 2 Burndown Chart:** Accurately formats 21 Story Points burned down to 0 across 10 working days with variance analysis.<br>2. **Consistently Applied Definition of Done:** 8-point strict DoD audit table verifying acceptance criteria, headless tests, privacy, peer review, and traceability.<br>3. **Detailed Task & Hours Summary:** Granular daily log recording 130.0 total hours across Arnav (44.5h), Keshav (42.0h), and Hiranya (43.5h).<br>4. **Sprint 3 Planning:** 20-point backlog with reprioritisation justification. | **DISTINCTION (80+)** |

---

## 2. Distinction Evidence Checklist

* [x] **Compiles and runs out-of-the-box:** Single-click execution via `run-d5.bat` or `run-d5.ps1`.
* [x] **Headless smoke tests:** Exits with code 0 via `CoreSmoke` (10/10 PASS).
* [x] **Formal LaTeX report:** Typeset with 12pt font, 1.5cm margins, native TikZ vector graphics, and ACM bibliography.
* [x] **Boundary test results:** Complete matrix documenting 22 test partitions and outputs.
* [x] **Task & hours summary:** Detailed daily log of 130 hours across all 3 team members.
* [x] **Definition of done:** 8-point framework audited across all user stories.
* [x] **Burndown chart:** Daily trajectory with ideal vs actual velocity tracking.
