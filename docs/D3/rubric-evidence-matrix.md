# D3 Rubric Evidence Matrix

**Deliverable:** D3 — Evaluation Plan, Architectural Design and Technical Setup (7%)  
**Team:** Arnav Mishra, Keshav Singhal  
**Target Band:** 80+ Distinction

---

## Criterion-by-Criterion Evidence Mapping

### 1. Evaluation Plan (80+ Target)

| Rubric Expectation (80+) | Evidence Location | Current Status | Quality Gap | Action to Reach Highest Band | Verification |
|--------------------------|------------------|:-------------:|-------------|------------------------------|-------------|
| Excellent evaluation plan with rich detail | `docs/D3/evaluation-protocol.md` (11 sections, ~400 lines) | ✅ Complete | None | — | Covers method, participants, tasks, success criteria, analysis |
| High relevance to user-centred evaluation | Protocol specifies think-aloud usability testing, not heuristic-only | ✅ Met | None | — | Method justified with academic references (Nielsen, Brooke, Ericsson & Simon) |
| Thoroughly reflects user-centred evaluation | 5 synthetic tasks mapped to D1 themes and D2 stories | ✅ Met | None | — | Tasks T1–T5 each trace to EQ, D1 theme, D2 story |
| Evaluation method described | Moderated think-aloud with concurrent verbalisation | ✅ Met | None | — | Section 2: justification with 5 reasons |
| Participants described | N=5–6 from another COMP2300 group, self-recruited | ✅ Met | None | — | Section 3: recruitment plan with timeline |
| Tasks and questions included | 5 task cards + SUS + SEQ + 5 debrief questions | ✅ Met | None | — | Sections 6–7 |
| Success criteria defined | 6 quantitative benchmarks (completion rate, SUS, SEQ, etc.) | ✅ Met | None | — | Section 8: table with targets |
| Analysis plan described | Quantitative (descriptive stats, SUS formula) + qualitative (affinity diagramming, 6 theme clusters) | ✅ Met | None | — | Section 9 |
| COMP2300 restrictions met | Peer recruitment, lab setting, no sensitive data, not heuristic-only | ✅ All 5 met | None | — | Explicitly addressed in Sections 2–4 |
| Materials prepared | 6 evaluation materials files in `docs/D3/evaluation-materials/` | ✅ Complete | None | — | Info sheet, consent, facilitator script, task cards, SUS/SEQ, observation sheet |

### 2. Project Setup (80+ Target)

| Rubric Expectation (80+) | Evidence Location | Current Status | Quality Gap | Action to Reach Highest Band | Verification |
|--------------------------|------------------|:-------------:|-------------|------------------------------|-------------|
| Excellent project infrastructure | GitHub repo (working) + GitLab (assessed) + Maven build | ✅ Set up | GitLab remote not yet configured | Configure GitLab remote and test push | GitHub verified; GitLab handover planned |
| Appropriate agile tools | Maven, JUnit 5, Git branching, conventional commits | ✅ In use | None | — | `pom.xml` with Maven compiler, Surefire, JaCoCo |
| Risks comprehensively identified | 10 risks with L×I scoring, early warnings, mitigations | ✅ Complete | None | — | `docs/D3/risk-register.md` |
| Well-justified mitigation strategies | Each risk has specific technical/process mitigation + contingency | ✅ Complete | None | — | Risk register reviewed by both members |
| Strong readiness for ongoing development | DoR, DoD, sprint ceremonies, build scripts, test harness | ✅ Complete | None | — | Project plan Section 6–8 |

### 3. Project Planning (80+ Target)

| Rubric Expectation (80+) | Evidence Location | Current Status | Quality Gap | Action to Reach Highest Band | Verification |
|--------------------------|------------------|:-------------:|-------------|------------------------------|-------------|
| Excellent increment and sprint plans | 3-sprint roadmap aligned with D4/D5/D6 | ✅ Complete | None | — | Project plan Section 2 |
| Well-chosen deliverables maximising value and feasibility | Each sprint delivers a demo-able value increment | ✅ Complete | None | — | Section 5: value verification table |
| Plans clearly reflect prioritisation | MoSCoW prioritisation; Must-Have stories in Sprint 1 | ✅ Complete | None | — | Section 3: story allocation table |
| Detailed and complete sprint backlog | Sprint 1: 8 tasks, story points, owners, acceptance criteria | ✅ Complete | None | — | Section 4: Sprint 1 backlog |
| Burndown chart in correct format and highly effective | Planned burndown with ideal line, 10 days, story points axis | ✅ Complete | Actual burndown pending Sprint 1 execution | Track actual vs planned during Sprint 1 | Section 4: Mermaid xychart |
| User stories allocated to sprints | 13 stories across 3 sprints with owners | ✅ Complete | None | — | Section 3 |

### 4. Technical Design (80+ Target)

| Rubric Expectation (80+) | Evidence Location | Current Status | Quality Gap | Action to Reach Highest Band | Verification |
|--------------------------|------------------|:-------------:|-------------|------------------------------|-------------|
| Excellent design decisions thoroughly justified | 5 ADRs with context, decision, justification, trade-offs | ✅ Complete | None | — | Architecture Section 7 |
| Architecture well chosen, facilitates maintainability | Clean Layered Architecture: UI / Services / Domain / Persistence | ✅ Complete | None | — | Architecture Section 1–2 |
| Rich and appropriate UML artifacts | Class diagram, Sequence diagram, Use-case diagram, State machine | ✅ 4 diagrams | None | — | Architecture Sections 3–6 |
| Clearly linked to decisions | Each ADR references specific classes; traceability table maps stories to components | ✅ Linked | None | — | Architecture Section 8 |
| Design meets requirements | Requirements traceability table: 7 requirements → classes → tests | ✅ Complete | None | — | Architecture Section 8 |

---

## Overall D3 Readiness Assessment

| Criterion | Target Band | Current Assessment | Confidence |
|-----------|:-----------:|:------------------:|:----------:|
| Evaluation Plan | 80+ | **Distinction Ready** | High |
| Project Setup | 80+ | **Distinction Ready** | High (GitLab config pending) |
| Project Planning | 80+ | **Distinction Ready** | High |
| Technical Design | 80+ | **Distinction Ready** | High |

---

## Remaining Actions Before Submission

| # | Action | Owner | Priority |
|---|--------|-------|----------|
| 1 | Configure UoS GitLab remote and test push | Keshav | High |
| 2 | Compile D3 report to PDF (LaTeX or Word) | Arnav | High |
| 3 | Verify all internal document cross-references | Arnav | Medium |
| 4 | Update `genai.txt` with AI assistance disclosure | Both | High |
| 5 | Final council review and verdict | Both | Medium |

---

*Authors: Arnav Mishra (rubric analysis, evidence mapping), Keshav Singhal (technical verification)*
