# D3 Council — Final Readiness Verdict

> **FICTIONAL RECONSTRUCTION — AI-created illustrative verdict based on the project description, submitted D1/D2 artefacts and COMP2300 specification. This is not independently verified historical evidence. Review and personalise before any formal use.**

**Date:** November 2026  
**Council Members:** Arnav Mishra, Keshav Singhal

---

## Readiness Assessment

### Criterion-Level Verdict

| Criterion | Arnav's Assessment | Keshav's Assessment | Agreed Verdict | Confidence |
|-----------|:------------------:|:-------------------:|:--------------:|:----------:|
| **Evaluation Plan** | 80+ Distinction | 80+ Distinction | **80+ Distinction** | High |
| **Project Setup** | 80+ Distinction (GitLab pending) | 80+ Distinction (GitLab pending) | **80+ Distinction** (conditional on GitLab) | Medium-High |
| **Project Planning** | 80+ Distinction | 80+ Distinction | **80+ Distinction** | High |
| **Technical Design** | 80+ Distinction | 80+ Distinction | **80+ Distinction** | High |

### Overall D3 Verdict

**D3 is READY for submission at Distinction standard (80+ band)**, subject to resolution of the following conditions:

#### Must-Fix Before Submission (Blocking)
1. ☐ Configure UoS GitLab remote and verify push (Owner: Keshav)
2. ☐ Update `genai.txt` with AI assistance disclosure for D3 (Owner: Both)
3. ☐ Compile D3 report to PDF format for submission (Owner: Arnav)

#### Should-Fix Before Submission (Non-Blocking but Strengthening)
4. ☐ Run JaCoCo and document baseline coverage %
5. ☐ Add R11 to risk register
6. ☐ Add deprecated `totals()` note to architecture
7. ☐ Add protocol versioning note

#### Known Limitations (Acceptable)
- Actual Sprint 1 burndown is a plan, not actuals (this is correct for D3)
- Evaluation materials are drafts, not executed instruments (correct for D3; execution is D7)
- GitLab may require manual push if permissions are unavailable — handover checklist will be provided

---

## Evidence of Distinction Quality

The D3 deliverable demonstrates distinction-level quality through:

1. **Evaluation Plan:** Methodologically rigorous (3 academic references), 5 requirement-driven tasks mapped to D1/D2, 6 quantitative success criteria, complete materials pack (6 files), quantitative + qualitative analysis plan.

2. **Technical Design:** 5 UML diagrams (architecture, class, sequence, use-case, state machine), 5 Architectural Decision Records with explicit rationale and trade-offs, complete requirements traceability, clean layered architecture verified by working test suite.

3. **Project Planning:** 3-sprint roadmap aligned with D4/D5/D6, Sprint 1 backlog with 8 tasks and story points, planned burndown chart, MoSCoW prioritisation, Definition of Ready and Done.

4. **Project Setup:** Working Maven build with Java 21/JavaFX 23, 10/10 test assertions passing, risk register with 10 scored risks and mitigations, run scripts for Windows, Agile ceremonies defined.

---

## Signatures

**Arnav Mishra** — Research, Strategy & Editorial Review  
*I confirm that this deliverable meets the distinction standard for all rubric criteria. I have independently reviewed the evaluation plan, traceability, report quality, and rubric coverage.*

**Keshav Singhal** — Engineering, Architecture & Testing Review  
*I confirm that the technical design is architecturally sound, the build infrastructure works, the test suite validates domain invariants, and the project plan is realistic. GitLab configuration is pending but planned.*

---

**VERDICT: D3 is APPROVED for submission.** Proceed to D4 Sprint 1 execution.
