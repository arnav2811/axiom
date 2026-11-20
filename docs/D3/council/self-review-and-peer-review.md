# D3 Council — Self-Review and Peer-Review

> **FICTIONAL RECONSTRUCTION — AI-created illustrative self/peer review based on the project description, submitted D1/D2 artefacts and COMP2300 specification. This is not independently verified historical evidence. Review and personalise before any formal use.**

**Date:** November 2026

---

## 1. Arnav's Self-Review

### What I did well
- The evaluation plan is comprehensive and methodologically sound, with academic references justifying the method choice. The 5 task scenarios are specifically designed to test our D1 research questions, not generic usability.
- The traceability chain provides a clear, auditable path from D1 research to D7 evaluation. This should demonstrate to the assessor that our design decisions are evidence-driven.
- I ensured the report covers all 4 rubric areas with explicit evidence for each criterion.

### What I could improve
- I may have over-focused on documentation completeness at the expense of ensuring the GitLab infrastructure is actually functional. I should have flagged this earlier and worked with Keshav to resolve it.
- The evaluation protocol could be more concise. Some sections repeat information that's already in the materials files. For the final PDF, I should consider condensing to avoid redundancy.
- I need to be more careful about the boundary between "planned" and "done" — the report should be clear that evaluation materials are drafts, not executed instruments.

### What I learned
- Writing an evaluation plan forced me to think about what we're actually testing and why. The process of linking tasks to research questions and design principles clarified my understanding of the product's value proposition.

---

## 2. Keshav's Self-Review

### What I did well
- The class, sequence, and state machine diagrams are detailed and accurately reflect the actual codebase. I verified each diagram against the source files.
- The risk register is comprehensive (10 risks) with practical mitigations, not generic boilerplate.
- The sprint backlog has specific, measurable acceptance criteria for every task.

### What I could improve
- I should have configured the GitLab remote immediately at the start of D3, not left it as a pending action. This is a known requirement and should not be a last-minute task.
- The burndown chart shows only the ideal line. For D4, I need to track actual burndown daily and show the deviation.
- I could have provided more detail on the test strategy — specifically, what boundary and partition tests are planned for D5 and what coverage target we're aiming for.

### What I learned
- Creating ADRs forced me to articulate *why* we made specific technical choices, not just *what* we chose. This is a valuable engineering practice that I'll carry forward.

---

## 3. Arnav's Peer Review of Keshav

### Strengths
- Keshav's engineering review is thorough and practical. The class diagram verification against actual source code shows intellectual honesty.
- The risk about submission build failure (R11) is a great catch — this is a real, common failure mode that I hadn't considered.
- The sprint velocity concern is well-calibrated — it's the right challenge to raise without being obstructive.

### Suggestions
- Keshav's review could strengthen the connection between the technical architecture and the user experience. The architecture is clean from an engineering perspective, but the review doesn't assess whether the architecture *supports the user-centred design principles* from D2.
- For future reviews, I'd like Keshav to also comment on accessibility implications of architectural choices (e.g., does the layer separation make it easier or harder to implement keyboard navigation?).

---

## 4. Keshav's Peer Review of Arnav

### Strengths
- Arnav's evaluation plan review demonstrates deep understanding of usability research methodology. The academic references are well-chosen and the success criteria are specific and measurable.
- The D1→D2→D3 continuity assessment is valuable — it shows that Arnav is thinking about the project as a coherent whole, not just isolated deliverables.
- The rubric coverage verification table is an excellent quality assurance tool.

### Suggestions
- Arnav's review could be more critical of the evaluation plan's limitations. For example, using peers rather than actual target users (Indian households) is a significant ecological validity limitation that the review acknowledges but doesn't challenge.
- The concern about EQ4's D1 link is valid but minor. I'd prefer Arnav spent more energy on verifying that the success criteria thresholds are realistic (e.g., is 90% task completion achievable with a novel tool that participants have never seen?).

---

## 5. Agreed Improvements

| # | Improvement | Responsibility |
|---|------------|---------------|
| 1 | Arnav: Be more proactive about flagging infrastructure issues early | Arnav |
| 2 | Keshav: Configure GitLab immediately, don't defer | Keshav |
| 3 | Both: Review each other's contributions more critically in future councils | Both |
| 4 | Arnav: Assess accessibility implications in next review | Arnav |
| 5 | Keshav: Connect architecture to user experience in next review | Keshav |
