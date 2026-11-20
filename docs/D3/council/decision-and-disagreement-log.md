# D3 Council — Decision and Disagreement Log

> **FICTIONAL RECONSTRUCTION — AI-created illustrative log based on the project description, submitted D1/D2 artefacts and COMP2300 specification. This is not independently verified historical evidence. Review and personalise before any formal use.**

**Date:** November 2026

---

## Decisions Made

| # | Decision | Raised By | Evidence/Rationale | Outcome | Status |
|---|----------|-----------|-------------------|---------|--------|
| D1 | Use think-aloud usability testing as the primary D7 evaluation method | Arnav | COMP2300 spec requires user-centred method; think-aloud captures both qualitative and quantitative data; justified by Nielsen & Landauer (1993) | **Agreed unanimously** | Final |
| D2 | Plan for N=5–6 participants from another COMP2300 group | Arnav | Spec mandates peer recruitment; 5 participants identify ~85% of usability issues (Nielsen, 1993) | **Agreed unanimously** | Final |
| D3 | Maintain clean layered architecture with headless-first domain | Keshav | Enables 100% automated testing without GUI; existing CoreSmoke suite validates this approach | **Agreed unanimously** | Final |
| D4 | Use 3-sprint roadmap aligned with D4/D5/D6 deliverables | Both | Natural alignment with submission schedule; each sprint delivers demo-able value | **Agreed unanimously** | Final |
| D5 | Sprint 1 scope: 28 story points (5 Must-Have stories + tests + build) | Both | Arnav argued existing codebase reduces implementation effort; Keshav agreed with velocity adjustment caveat | **Agreed with caveat** (track actuals, adjust Sprint 2) | Final |
| D6 | Include deprecated `totals()` note in architecture diagram | Keshav | Prevents assessor confusion about codebase knowledge | **Agreed** | Pending action |
| D7 | Elevate GitLab configuration to high priority | Arnav | Spec explicitly requires GitLab setup; absence could lose marks | **Agreed** | Pending action |

---

## Disagreements

| # | Topic | Arnav's Position | Keshav's Position | Resolution | Evidence |
|---|-------|-----------------|-------------------|------------|---------|
| DIS-1 | Should evaluation protocol include a versioning/update note? | Yes — shows methodological awareness that materials may need revision when final prototype is ready | Concern that it weakens the "rich detail" claim by implying incompleteness | **Resolved:** Include the note, framed positively — the spec itself permits updates for D7 | COMP2300 spec p.27: "You may update your evaluation plan if necessary" |
| DIS-2 | Is 28 story points realistic for Sprint 1? | Yes — existing domain code reduces effort; Sprint 1 is primarily UI wiring and provenance view | Cautious — 1.4 pts/day/person is ambitious with other coursework | **Resolved:** Keep 28 pts but add velocity adjustment note; adjust Sprint 2 based on Sprint 1 actuals | Keshav's self-review; standard Agile practice of using yesterday's weather |

> No unresolved disagreements. Both reviewers agree D3 is distinction-ready.

---

## Action Register (Ranked by Priority)

| Rank | Action | Owner | Priority | Source | Deadline | Status |
|:----:|--------|-------|----------|--------|----------|--------|
| 1 | Configure and test UoS GitLab remote | Keshav | **High** | Cross-examination | Before D3 submission | Pending |
| 2 | Run JaCoCo coverage report and document baseline % | Keshav | **Medium** | Keshav review | Before D3 submission | Pending |
| 3 | Add R11 (submission build failure) to risk register | Keshav | **Medium** | Keshav review | Before D3 submission | Pending |
| 4 | Add deprecated `totals()` note to architecture document | Keshav | **Medium** | Cross-examination | Before D3 submission | Pending |
| 5 | Add protocol versioning note to evaluation plan | Arnav | **Low** | Cross-examination | Before D3 submission | Pending |
| 6 | Strengthen EQ4 D1 link in evaluation protocol | Arnav | **Low** | Arnav review | Before D3 submission | Pending |
| 7 | Add velocity adjustment note to project plan | Arnav | **Low** | Cross-examination | Before D3 submission | Pending |
| 8 | Add prior feedback incorporation paragraph to report | Arnav | **Low** | Arnav review | Before D3 submission | Pending |
