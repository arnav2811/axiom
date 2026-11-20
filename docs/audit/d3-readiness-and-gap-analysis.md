# D3 Readiness and Gap Analysis

**Date:** 2026-11-20  
**Purpose:** Identify what D3 requires and gaps to fill

---

## D3 Requirements (from Official Specification)

D3 is worth **7%** and covers four assessed areas:

| Area | Rubric Weight | 80+ Distinction Descriptor |
|------|--------------|---------------------------|
| **Evaluation Plan** | Equal | Excellent, rich detail, high relevance, thoroughly reflects user-centred evaluation |
| **Project Setup** | Equal | Excellent infrastructure, appropriate agile tools, risks comprehensively identified with well-justified mitigation, strong readiness |
| **Project Planning** | Equal | Excellent plans, well-chosen deliverables, detailed complete sprint backlog, burndown in correct format and highly effective |
| **Technical Design** | Equal | Excellent decisions thoroughly justified, well-chosen architecture, rich appropriate design artifacts (UML) clearly linked to decisions |

## Readiness Assessment

### ✅ READY

| Requirement | Evidence | Location |
|-------------|----------|----------|
| Java + JavaFX application exists | FootprintLensApp.java compiles and runs | `New/application/` |
| Domain model implements D2 concepts | CarbonService, Activity, Factor, Estimate, etc. | `New/application/src/main/java/in/carbon/core/` |
| Test infrastructure exists | CoreSmoke (10 checks), CarbonServiceTest | `New/application/src/test/java/` |
| Build system configured | Maven pom.xml with Java 21 + OpenJFX 23 | `New/application/pom.xml` |
| Run scripts exist | .bat and .ps1 launchers | Repo root |
| D1 research baseline available | Themes S1–S3, L1–L3; Personas P1–P6; RQ1–RQ3 | `Submitted D1/` |
| D2 design baseline available | Concept A, DP1–DP5, MoSCoW stories, P0–P6 model | `Submitted D2/` |

### ⚠️ GAPS — Must Be Filled for D3

| Gap | Priority | Action Required |
|-----|----------|----------------|
| **No evaluation plan exists** | CRITICAL | Create full user-centred evaluation plan with think-aloud protocol, tasks, materials, recruitment plan, analysis plan |
| **No UML diagrams** | CRITICAL | Create use-case, class, sequence diagrams |
| **No sprint/project plan** | CRITICAL | Create 3-sprint roadmap, detailed Sprint 1 backlog, story allocation, burndown method |
| **No risk register** | HIGH | Create risk register with likelihood, impact, mitigation, owner |
| **No D3 report** | CRITICAL | Write complete D3 report covering all 4 areas |
| **UoS GitLab not configured** | HIGH | Add GitLab remote and push history |
| **No formal architecture document** | CRITICAL | Document clean 4-layer architecture, component responsibilities, data flow |
| **No rubric evidence matrix** | HIGH | Create criterion-by-criterion mapping for D3 |
| **Team roster needs updating** | MEDIUM | README, genai.txt, and all new docs must reflect 2-person team |
| **No evaluation materials** | HIGH | Consent form, participant info, facilitator script, task instructions, observation sheet, post-task questionnaire |
| **No contribution plan** | MEDIUM | At least 3 commits per person for D3 |
| **No council review** | MEDIUM | Two-agent review council must review D3 |

### ℹ️ NOTES

| Item | Note |
|------|------|
| D2 proposed a formative evaluation | D3 must specify the final summative evaluation for D7 |
| Think-aloud usability testing suggested in D2 | Confirm and detail in D3 evaluation plan |
| Participants from another COMP2300 group | Required by spec — plan recruitment |
| Lab setting required | Not remote, not in-the-wild — quiet controlled room |
| No sensitive personal data | UK GDPR — no health, political, religious data |
| Heuristic evaluation alone NOT sufficient | May supplement but cannot replace user-centred eval |

## Prioritised Action Plan for D3

1. **Evaluation Plan** — Think-aloud usability testing protocol with complete materials
2. **Architecture Document** — 4-layer architecture, UML diagrams, design justification
3. **Project Plan** — 3-sprint roadmap, Sprint 1 backlog, burndown method
4. **Risk Register** — Comprehensive risk analysis
5. **D3 Report** — Integrating all of the above
6. **Rubric Evidence Matrix** — Verify distinction coverage
7. **Council Review** — Two-agent review and verdict
8. **Infrastructure** — GitLab, README, genai.txt updates
