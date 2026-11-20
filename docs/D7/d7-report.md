# D7 Report — Final Evaluation

**Deliverable:** D7 — Final Evaluation (8% of module mark)
**Authors:** Arnav Mishra, Keshav Singhal
**Product:** Footprint Lens — Contextual Choice Coach
**Version:** v1.0.0 (Final Release)
**Platform:** Java 21 LTS / JavaFX 23 / Maven 3.9

---

## 1. Executive Summary

This report presents the evaluation plan, methodology, materials, and analysis framework for the final user-centred evaluation of Footprint Lens. The evaluation uses a **think-aloud usability testing** protocol with **N=5–6 participants** recruited from another COMP2300 group, conducted in a controlled lab setting.

> **⚠ PENDING:** This report presents the evaluation design, protocol, and analysis plan. Actual participant data, results, and findings are marked **[PENDING]** throughout — they will be populated after the evaluation session is conducted. No empirical data has been fabricated.

---

## 2. Evaluation Method

### 2.1 Method Selection: Think-Aloud Usability Testing

**Chosen method:** Concurrent think-aloud usability testing (Ericsson & Simon, 1993; Lewis, 1982)

**Justification:**
- **User-centred:** Participants interact directly with the application, revealing real usability issues
- **Rich qualitative data:** Verbalised thoughts expose cognitive processes, expectations, and confusion
- **Appropriate for formative evaluation:** Identifies specific UI improvements rather than just measuring performance
- **Feasible with 5–6 participants:** Nielsen (2000) demonstrates that 5 participants find ~85% of usability problems
- **Lab-compatible:** Controlled environment enables consistent observation and recording

**Why not other methods:**
- Heuristic evaluation: Not user-centred (rubric explicitly disallows as sole method)
- Questionnaire-only: Provides satisfaction data but misses cognitive processes
- A/B testing: Requires two versions and larger sample size
- Field study: Not permitted (must be lab setting)

### 2.2 Evaluation Setting

- **Location:** Quiet room (university campus) with controlled environment
- **Equipment:** Laptop running Footprint Lens v1.0.0, screen recording software (OBS), audio recorder
- **Configuration:** Application pre-loaded with 3 sample records (1 ELECTRICITY, 1 TRAVEL, 1 WATER) so participants see a non-empty state
- **Duration:** 45–60 minutes per participant (10 min intro, 25–30 min tasks, 10–15 min questionnaire and debrief)

### 2.3 Ethical Considerations

- No sensitive personal data collected (UK GDPR compliant)
- Participant information sheet provided before consent
- Written informed consent obtained
- Participants can withdraw at any time without penalty
- Data stored securely; anonymised in reporting
- No deception involved
- Participants are from another COMP2300 group (not our own team)

---

## 3. Participants

### 3.1 Recruitment Plan

- **Source:** Another COMP2300 group (as required by the specification)
- **Target N:** 5–6 participants
- **Recruitment method:** Direct approach — identify another group and ask them to participate
- **Inclusion criteria:** Currently enrolled in COMP2300; able to use a desktop application; comfortable thinking aloud in English
- **Exclusion criteria:** Members of our own group; anyone who has seen the source code

### 3.2 Participant Demographics

> **[PENDING]** — To be populated after recruitment

| Participant ID | Age Range | Gender | CS Experience | Carbon Footprint Awareness |
|----------------|-----------|--------|---------------|---------------------------|
| P1 | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| P2 | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| P3 | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| P4 | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| P5 | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| P6 | [PENDING] | [PENDING] | [PENDING] | [PENDING] |

---

## 4. Evaluation Protocol

### 4.1 Facilitator Script Summary

The facilitator follows a structured script (see `docs/D7/evaluation-materials/facilitator-script.md`):

1. **Welcome** (2 min): Introduce the session, explain think-aloud method
2. **Information sheet and consent** (3 min): Provide info sheet, obtain written consent
3. **Think-aloud practice** (5 min): Practice task (unrelated to Footprint Lens) to establish verbalisation
4. **Task completion** (25–30 min): 5 tasks in fixed order
5. **Post-task questionnaire** (10 min): SUS + custom questions
6. **Debrief** (5 min): Open discussion, thank participant

### 4.2 Task Descriptions

Participants complete 5 tasks that cover the core functionality of Footprint Lens:

| Task | Description | Feature Tested | Success Criteria | Max Time |
|------|-------------|----------------|-----------------|----------|
| **T1** | Record your monthly electricity usage of 200 kWh | Multi-category recording | Record saved with correct kgCO₂e estimate visible | 5 min |
| **T2** | Find which emission category contributes most to the household's carbon footprint | Dashboard visualisation | Participant identifies the highest bar in the chart | 3 min |
| **T3** | Edit the existing TRAVEL record to change the distance from 50 km to 75 km | Record management | Record updated, new estimate visible | 5 min |
| **T4** | Create a custom emission factor for LPG cooking gas (2.98 kgCO₂e/kg) | Factor editor | New factor created with USER_SUPPLIED badge | 7 min |
| **T5** | Export all your emission data as a CSV file and find the reduction advice for your highest-emission category | Data export + coaching | CSV saved; coaching advice displayed | 5 min |

**Task card format:** Each task is printed on a separate card with the scenario context, specific instructions, and "you're done when…" completion indicator.

### 4.3 Data Collection

During each task, the following data is recorded:

| Data Type | Collection Method | Instrument |
|-----------|-------------------|------------|
| Task completion (success/fail) | Facilitator observation | Observation sheet |
| Task completion time | Stopwatch | Observation sheet |
| Think-aloud verbalisations | Audio recording + facilitator notes | Transcript template |
| Navigation errors | Screen recording + facilitator notes | Observation sheet |
| Single Ease Question (SEQ) | Post-task rating (1–7) | Task card |
| System Usability Scale (SUS) | Post-session questionnaire | SUS form |
| Open-ended feedback | Post-session interview | Question list |

---

## 5. Success Criteria

### 5.1 Quantitative Criteria

| Metric | Target | Rationale |
|--------|--------|-----------|
| Task completion rate | ≥ 80% (4/5 tasks completed by each participant) | Acceptable usability threshold |
| Mean SUS score | ≥ 68 (above average) | Bangor et al. (2009): 68 = industry average |
| Mean SEQ per task | ≥ 5.0 / 7.0 | Sauro & Dillman (2009): 5.0 = acceptable ease |
| Mean task time (T1) | ≤ 5 minutes | Recording is a core action — should be quick |
| Critical errors | 0 per participant | No data loss, crashes, or unrecoverable states |

### 5.2 Qualitative Criteria

| Criterion | Assessment Method |
|-----------|------------------|
| Factor badge comprehension | Think-aloud: do participants understand VERIFIED/ILLUSTRATIVE/USER_SUPPLIED? |
| Coaching relevance | Think-aloud: do participants find the coaching advice actionable? |
| Navigation efficiency | Observation: can participants find features without excessive exploration? |
| Design principle alignment | Does the application reflect DP1-DP5 from D2 in practice? |

---

## 6. Analysis Plan

### 6.1 Quantitative Analysis

1. **Task completion rate:** Count successes per task; compute overall rate
2. **SUS score calculation:** Follow Brooke (1996) scoring: for odd items subtract 1; for even items subtract from 5; sum × 2.5. Report mean, SD, and per-participant scores
3. **SEQ analysis:** Mean and SD per task; identify tasks with SEQ < 5.0 as usability concerns
4. **Task time analysis:** Mean and SD per task; flag tasks exceeding target time
5. **Error analysis:** Count and categorise errors (critical, non-critical, navigation, input)

### 6.2 Qualitative Analysis

1. **Think-aloud transcript coding:** Code verbalisations using an open coding scheme:
   - **Confusion** (C): "I don't know where to..." / "What does this mean?"
   - **Expectation mismatch** (E): "I expected this to..." / "Why did it..."
   - **Positive feedback** (P): "Oh, this is nice" / "That makes sense"
   - **Feature request** (F): "It would be better if..." / "I wish I could..."
2. **Affinity diagramming:** Group coded utterances into themes
3. **Severity rating:** Each usability issue rated on 0–4 scale (Nielsen, 1994):
   - 0: Not a usability problem
   - 1: Cosmetic only
   - 2: Minor usability problem
   - 3: Major usability problem
   - 4: Usability catastrophe

### 6.3 Triangulation

Combine quantitative metrics (SUS, SEQ, task times) with qualitative findings (think-aloud themes) to identify:
- **High-priority issues:** Low SEQ + high error count + negative think-aloud codes
- **Quick wins:** Issues with simple fixes and high impact
- **Validation of design principles:** Evidence that DP1-DP5 are perceived by users

---

## 7. Results

> **⚠ [PENDING]:** All results below are placeholder structures. Actual data will be populated after the evaluation is conducted.

### 7.1 Task Completion Summary

| Task | P1 | P2 | P3 | P4 | P5 | P6 | Rate |
|------|----|----|----|----|----|----|------|
| T1 | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| T2 | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| T3 | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| T4 | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| T5 | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
| **Overall** | | | | | | | **[PENDING]** |

### 7.2 SUS Scores

| Participant | Raw Score | SUS Score | Adjective Rating |
|------------|-----------|-----------|-------------------|
| P1 | [PENDING] | [PENDING] | [PENDING] |
| P2 | [PENDING] | [PENDING] | [PENDING] |
| P3 | [PENDING] | [PENDING] | [PENDING] |
| P4 | [PENDING] | [PENDING] | [PENDING] |
| P5 | [PENDING] | [PENDING] | [PENDING] |
| P6 | [PENDING] | [PENDING] | [PENDING] |
| **Mean** | | **[PENDING]** | |
| **SD** | | **[PENDING]** | |

### 7.3 SEQ Scores by Task

| Task | Mean SEQ | SD | Below Target? |
|------|----------|----|---------------|
| T1 | [PENDING] | [PENDING] | [PENDING] |
| T2 | [PENDING] | [PENDING] | [PENDING] |
| T3 | [PENDING] | [PENDING] | [PENDING] |
| T4 | [PENDING] | [PENDING] | [PENDING] |
| T5 | [PENDING] | [PENDING] | [PENDING] |

### 7.4 Task Time Analysis

| Task | Target | Mean Time | SD | Exceeded? |
|------|--------|-----------|-----|-----------|
| T1 | 5 min | [PENDING] | [PENDING] | [PENDING] |
| T2 | 3 min | [PENDING] | [PENDING] | [PENDING] |
| T3 | 5 min | [PENDING] | [PENDING] | [PENDING] |
| T4 | 7 min | [PENDING] | [PENDING] | [PENDING] |
| T5 | 5 min | [PENDING] | [PENDING] | [PENDING] |

### 7.5 Qualitative Themes

> **[PENDING]** — Themes to be derived from think-aloud transcript coding and affinity diagramming

| Theme | Code Count | Severity | Example Quote |
|-------|-----------|----------|---------------|
| [PENDING] | [PENDING] | [PENDING] | [PENDING] |

---

## 8. Discussion

> **⚠ [PENDING]:** Discussion will be written after results are available.

### 8.1 Summary of Findings

[PENDING: Summarise key quantitative and qualitative findings]

### 8.2 Design Principle Validation

| Design Principle | Evidence from Evaluation | Supported? |
|-----------------|-------------------------|------------|
| DP1 Transparent Provenance | [PENDING: Did participants notice/understand factor badges?] | [PENDING] |
| DP2 Constraint-Aware Protection | [PENDING: Did participants observe that coaching respects choices?] | [PENDING] |
| DP3 Low-Burden Navigation | [PENDING: Was navigation efficient in task completion?] | [PENDING] |
| DP4 Communal Boundary Integrity | [PENDING: Did household scope make sense to participants?] | [PENDING] |
| DP5 Descriptive Circularity | [PENDING: Did participants understand emission factor sourcing?] | [PENDING] |

### 8.3 Comparison with Success Criteria

| Criterion | Target | Actual | Met? |
|-----------|--------|--------|------|
| Task completion rate | ≥ 80% | [PENDING] | [PENDING] |
| Mean SUS | ≥ 68 | [PENDING] | [PENDING] |
| Mean SEQ | ≥ 5.0 | [PENDING] | [PENDING] |
| Critical errors | 0 | [PENDING] | [PENDING] |

### 8.4 Limitations

1. **Small sample size** (N=5–6): Findings may not generalise to broader population; however, Nielsen (2000) shows 5 users find ~85% of usability problems
2. **Participant homogeneity:** All participants are COMP2300 students — more technically capable than general public; may underestimate usability issues
3. **Lab setting bias:** Controlled environment may not reflect natural usage patterns; Hawthorne effect possible
4. **Single session:** Cross-sectional design; does not capture learning effects or long-term usage
5. **Facilitator effect:** Facilitator presence may influence participant behaviour despite neutral prompting
6. **Cultural context:** Participants may not be Indian residents — emission factors may seem abstract; carbon footprint awareness may vary

---

## 9. Recommendations

> **⚠ [PENDING]:** Recommendations will be informed by evaluation findings.

### 9.1 High-Priority Improvements

| # | Recommendation | Informed by | Effort |
|---|---------------|-------------|--------|
| R1 | [PENDING: Based on highest-severity usability issues] | [PENDING] | [PENDING] |
| R2 | [PENDING] | [PENDING] | [PENDING] |
| R3 | [PENDING] | [PENDING] | [PENDING] |

### 9.2 Future Work

1. **Extended category coverage:** Add more granular categories (e.g., air travel vs rail; vegetarian vs non-vegetarian meals)
2. **Mobile/web version:** Extend beyond desktop JavaFX to reach more users
3. **Community factor database:** Allow users to share and validate emission factors
4. **Longitudinal tracking:** Trend analysis over time with historical comparison
5. **Integration with utility providers:** Auto-import electricity/water bills
6. **Accessibility improvements:** Screen reader support, larger text options

### 9.3 Lessons Learned

[PENDING: Reflect on the evaluation process itself — what worked, what could be improved in future evaluations]

---

## 10. References

1. Bangor, A., Kortum, P., & Miller, J. (2009). Determining what individual SUS scores mean: Adding an adjective rating scale. *Journal of Usability Studies*, 4(3), 114–123.
2. Brooke, J. (1996). SUS: A "quick and dirty" usability scale. In P. W. Jordan et al. (Eds.), *Usability Evaluation in Industry* (pp. 189–194). Taylor & Francis.
3. Ericsson, K. A., & Simon, H. A. (1993). *Protocol Analysis: Verbal Reports as Data* (Revised ed.). MIT Press.
4. Lewis, C. (1982). Using the "thinking-aloud" method in cognitive interface design. *IBM Research Report*, RC 9265.
5. Nielsen, J. (1994). *Usability Engineering*. Morgan Kaufmann.
6. Nielsen, J. (2000). Why you only need to test with 5 users. *Nielsen Norman Group*.
7. Sauro, J., & Dillman, J. R. (2009). Comparison of three one-question, post-task usability questionnaires. *Proceedings of CHI 2009*, 1599–1608. ACM.
8. TERI (2023). *India-specific emission factors for household activities.* The Energy and Resources Institute.
9. Schwaber, K., & Sutherland, J. (2020). *The Scrum Guide.*
