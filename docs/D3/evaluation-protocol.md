# D3 Evaluation Plan — User-Centred Usability Testing Protocol

**Deliverable:** D3 — Evaluation Plan  
**Authors:** Arnav Mishra, Keshav Singhal  
**Target Phase:** D7 Final High-Fidelity Prototype Evaluation  
**Method:** Moderated Lab Usability Testing with Concurrent Think-Aloud Protocol  
**Ethics Governance:** UK GDPR & University of Southampton Ethics Policy

---

## 1. Evaluation Objectives

This evaluation plan describes how we will assess the usability, clarity, and effectiveness of the final Footprint Lens high-fidelity prototype at the end of the project (D7).

The evaluation investigates four research questions, each traced directly to D1 findings and D2 design principles:

| EQ | Evaluation Question | D1 Origin | D2 Principle |
|----|-------------------|-----------|--------------|
| EQ1 | Can users locate, understand, and trust the emission factor sources and methodology? | S3: Trust & Transparency | DP1: Transparent Provenance |
| EQ2 | Does the system correctly recognise protected lifestyle constraints and avoid punitive advice? | S2: Behavioural Constraints | DP2: Constraint-Aware Protection |
| EQ3 | Do users understand that descriptive records (repair/reuse) are meaningful without fabricated numbers? | L2: Circular Economy Recognition | DP5: Descriptive Circularity |
| EQ4 | Can users distinguish household-level shared emissions from personal liability? | L1: Household vs Individual Scope | DP4: Communal Boundary Integrity |

---

## 2. Evaluation Method Justification

We have selected **moderated usability testing with a concurrent think-aloud protocol** as our primary user-centred evaluation method. This is justified because:

1. **User-centred and observational** — directly observes real users interacting with the system, satisfying the COMP2300 requirement for a user-centred evaluation method.
2. **Rich qualitative data** — the think-aloud protocol captures users' mental models, expectations, confusion points, and comprehension in real time (Ericsson & Simon, 1993).
3. **Quantitative performance metrics** — task completion rates, time-on-task, and standardised questionnaire scores provide measurable success criteria.
4. **Small sample effectiveness** — Nielsen & Landauer (1993) demonstrate that 5 participants identify approximately 85% of usability problems. Our planned N=5–6 from another COMP2300 group exceeds this threshold.
5. **Controlled lab setting** — ensures consistent test conditions, as required by the specification.

> [!NOTE]
> A heuristic evaluation is NOT acceptable as the sole evaluation method (per the specification). We may optionally conduct a supplementary heuristic evaluation, but the primary evaluation is this user-centred usability test.

---

## 3. Participant Recruitment

### 3.1 Recruitment Criteria

In strict compliance with the COMP2300 specification:

- **Source:** All participants must be from **another active COMP2300 student project group**.
- **Recruitment:** The team will **self-recruit** participants by directly contacting another group via Microsoft Teams, seminar sessions, or in-person at labs.
- **Sample Size:** N = 5–6 participants (at minimum 5, up to 6 if available).
- **Voluntary:** Participation is entirely voluntary. No academic penalty, no financial inducement. Participants may withdraw at any time without giving a reason.

### 3.2 Recruitment Plan

| Step | Action | Owner | Timeline |
|------|--------|-------|----------|
| 1 | Identify candidate COMP2300 groups in lab sessions | Arnav | Week before D7 |
| 2 | Send recruitment message via Teams with Information Sheet attached | Arnav | 1 week before evaluation |
| 3 | Confirm participants and schedule individual 30-minute sessions | Keshav | 3–5 days before evaluation |
| 4 | Send reminder with venue details | Keshav | 1 day before each session |

> [!IMPORTANT]
> **No recruitment, consent, or sessions have occurred yet.** This is a plan for the D7 evaluation. Actual recruitment will happen when the final prototype is ready.

---

## 4. Ethical Safeguards & UK GDPR Compliance

### 4.1 Sensitive Data Prohibition

Under UK GDPR Special Category Data definitions (Article 9), the evaluation **strictly forbids** collecting or eliciting:
- Health data, sexual orientation, political opinions, religious or philosophical beliefs, trade union membership
- Real utility bills, actual rent, personal financial expenditure, or home addresses
- Student IDs, full names in observation records, or any personally identifiable information

### 4.2 Synthetic Scenario Cards

All participant interactions use **pre-prepared, standardised synthetic activity scenario cards**. Participants never enter their own real data. This eliminates any risk of collecting sensitive personal information.

### 4.3 De-identification

- Participants are assigned anonymous codes (P01 through P06).
- No names, student IDs, or contact details appear in observation sheets, transcripts, or reports.
- Consent forms are stored separately from observation data.

### 4.4 Data Storage and Retention

- Observation notes stored in the project's secure, local repository only.
- No data uploaded to external services.
- Data retained only for the duration of the module assessment, then securely deleted.

---

## 5. Evaluation Setting

### 5.1 Controlled Lab Environment

The evaluation will take place in a **controlled campus room** (university library quiet study room, computer lab, or similar quiet room where the environment can be controlled). This ensures:
- Minimal acoustic and visual distractions
- Standardised hardware: laptop running OpenJDK 21 on Windows 11, with external mouse and keyboard
- Offline execution (no internet dependency, ensuring consistent performance)

### 5.2 Session Structure

Each session lasts approximately **25–30 minutes**:

| Phase | Duration | Activity |
|-------|----------|----------|
| Welcome & Consent | 5 min | Brief participant, review information sheet, obtain written consent |
| Think-Aloud Introduction | 2 min | Explain concurrent think-aloud method with practice example |
| Task Execution (5 tasks) | 15–18 min | Participant completes 5 tasks using synthetic scenario cards |
| Post-Task Questionnaire | 3–5 min | System Usability Scale (SUS) + debrief questions |
| Thank & Close | 2 min | Thank participant, answer questions, explain next steps |

### 5.3 Team Roles During Evaluation

| Role | Assigned To | Responsibilities |
|------|-------------|-----------------|
| **Test Moderator** | Arnav Mishra | Welcome participant, deliver briefing, issue task cards, maintain neutral facilitation, provide think-aloud reminders ("What are you thinking right now?"), conduct debrief |
| **Observer & Data Logger** | Keshav Singhal | Record timestamped task milestones, task completion status, critical errors, navigation detours, verbatim participant quotes, administer SUS questionnaire |

> Both team members rotate roles between sessions to reduce moderator bias.

---

## 6. Evaluation Tasks (Synthetic Scenario Cards)

Five standardised tasks, each mapped to an evaluation question and user story:

### Task 1: Record Monthly Electricity (EQ1, US-01)
> *"You live in a shared 3-bedroom student apartment in Bengaluru. Your electricity sub-meter reads 120 kWh for October. Record this entry as household electricity and check what carbon estimate is calculated."*

**Completion Criterion:** Activity recorded; estimate displayed in table with calculated value.  
**Success Check:** Participant confirms seeing the calculated estimate and household scope badge.

### Task 2: Inspect Factor Provenance (EQ1, US-03)
> *"You are sceptical of the carbon estimate just displayed. Find out which emission factor was used, where it comes from, and whether it is verified or illustrative."*

**Completion Criterion:** Participant navigates to provenance/assumptions view without help.  
**Success Check:** Participant correctly identifies factor source (e.g., CEA), geography, and status.

### Task 3: Protected Choice — Night-Shift Commute (EQ2, US-02, US-09)
> *"You work a part-time night shift and must travel 12 km home by taxi at 2:30 AM for personal safety. Record this journey as a protected choice. Check what action recommendations are offered."*

**Completion Criterion:** Protected choice flag set; activity submitted.  
**Success Check:** Participant observes that no punitive reduction advice is shown for this activity.

### Task 4: Descriptive Repair Record (EQ3, US-07)
> *"Your kitchen mixer-grinder broke down. Instead of discarding it, you paid a technician to repair it. Record this repair activity and explain what the system says about emissions."*

**Completion Criterion:** Repair/circular category selected; record created.  
**Success Check:** Participant recognises that the estimate is explicitly "unavailable" with an explanation, not zero.

### Task 5: Household Scope Review (EQ4, US-05)
> *"Navigate to the summary view. What is the total household electricity footprint? Does the system divide this between roommates or keep it as a shared total? Explain why."*

**Completion Criterion:** Participant accesses household summary view.  
**Success Check:** Participant states that the household total is not divided per person.

---

## 7. Data Collection Instruments

### 7.1 Per-Task Measures

For each task, the observer records:

| Measure | Type | Scale/Format |
|---------|------|-------------|
| Task Completion | Categorical | Success / Partial / Fail / Not Attempted |
| Critical Errors | Count | Number of errors preventing task completion |
| Help Requests | Count | Number of times participant asked for assistance |
| Time on Task | Continuous | Seconds (optional — only if stopwatch used) |
| Comprehension Answer | Text | Verbatim participant statement verifying understanding |
| Observer Notes | Text | Navigation path, confusion points, verbatim quotes |

### 7.2 Single Ease Question (SEQ)

After each task, participant rates: *"Overall, how easy or difficult was this task?"* on a 1–7 scale (1 = Very Difficult, 7 = Very Easy).

### 7.3 System Usability Scale (SUS)

After all tasks, participant completes the standard 10-item SUS questionnaire (Brooke, 1996) using a 5-point Likert scale.

### 7.4 Semi-Structured Debrief Questions

1. "How transparent did you find the calculation formula and sources?"
2. "Did you find the protected choice concept respectful and useful?"
3. "How did you feel about non-numeric categories remaining descriptive rather than showing numbers?"
4. "What was the most confusing or frustrating aspect of the interface?"
5. "Is there anything you expected the system to do that it didn't?"

---

## 8. Success Criteria

| Metric | Measurement | Target (Distinction) | Minimum Acceptable |
|--------|-------------|---------------------|-------------------|
| **Task Completion Rate** | Completed tasks without critical help / Total tasks × 100 | ≥ 90% across all participants | ≥ 80% |
| **SUS Score** | Brooke (1996) standard formula (0–100) | ≥ 80 ("Grade A") | ≥ 70 ("Good") |
| **Mean SEQ** | Average post-task rating across all tasks | ≥ 5.5 / 7.0 | ≥ 5.0 / 7.0 |
| **Provenance Comprehension** | Correct identification of factor source/status in T2 | 100% (all participants) | ≥ 80% |
| **Constraint Recognition** | Correct explanation of suppressed advice in T3 | 100% (all participants) | ≥ 80% |
| **Critical Failures** | Unrecoverable crashes or dead-lock states | 0 | 0 |

---

## 9. Data Analysis Plan

### 9.1 Quantitative Analysis

- **Descriptive statistics:** Mean, median, standard deviation for task completion rates, time on task, SEQ ratings, and SUS scores.
- **SUS Score Calculation:** Standard Brooke algorithm:
  - For odd-numbered items: score = rating − 1
  - For even-numbered items: score = 5 − rating
  - SUS = 2.5 × sum of all item scores
- **Explicit denominators:** All rates reported with explicit sample sizes (e.g., 5/6 = 83.3%) rather than misleading percentages.
- **Task-level comparison:** Bar chart of completion rates and SEQ scores across the 5 tasks to identify weakest areas.

### 9.2 Qualitative Analysis

Qualitative data (think-aloud notes, observer memos, debrief responses) will be synthesised using **affinity diagramming** into thematic clusters:

1. **Comprehension & Terminology** — Misinterpretations of units, kWh, or emission boundaries
2. **Provenance & Epistemic Trust** — Reactions to factor sources, reference years, uncertainty
3. **Constraint Respect** — User response to non-judgemental coaching on protected choices
4. **Scope Boundaries** — Understanding of household vs personal responsibility
5. **Interaction Friction** — Workflow pauses, button discoverability, form validation
6. **Accessibility** — Readability, keyboard focus, font sizing

### 9.3 Linking Findings to Requirements

Every finding will be mapped back to:
- The evaluation question it addresses (EQ1–EQ4)
- The D1 theme/need it relates to (S1–S3, L1–L3)
- The D2 user story and acceptance criteria it tests
- A specific design recommendation for future work

---

## 10. Limitations and Mitigation

| Limitation | Mitigation |
|-----------|-----------|
| Small sample size (N=5–6) | Justified by Nielsen & Landauer (1993); sufficient for identifying majority of usability issues |
| Participants are peers, not actual target users (Indian households) | Acknowledged in report; peers test interface usability, not domain expertise |
| Synthetic data, not real consumption | Ensures UK GDPR compliance; acknowledged as ecological validity limitation |
| Single lab session, no longitudinal data | Acknowledged; scope is formative usability, not behaviour change measurement |
| Moderator may influence behaviour | Neutral facilitation training; role rotation between sessions |

---

## 11. Evaluation Materials Checklist

All materials are prepared in draft form and located in `docs/D3/evaluation-materials/`:

- [x] Participant Information Sheet (`participant-info-sheet.md`)
- [x] Consent Form (`consent-form.md`)
- [x] Facilitator Script (`facilitator-script.md`)
- [x] Task Instructions / Scenario Cards (`task-instructions.md`)
- [x] Post-Task Questionnaire / SUS (`post-task-questionnaire.md`)
- [x] Observation Sheet (`observation-sheet.md`)

---

## References

- Brooke, J. (1996). SUS: A "quick and dirty" usability scale. In P.W. Jordan et al. (Eds.), *Usability Evaluation in Industry*. Taylor & Francis.
- Ericsson, K.A. & Simon, H.A. (1993). *Protocol Analysis: Verbal Reports as Data*. MIT Press.
- Nielsen, J. & Landauer, T.K. (1993). A mathematical model of the finding of usability problems. *Proceedings of ACM INTERCHI '93*, 206–213.

---

*Authors: Arnav Mishra (evaluation design, research questions, analysis plan), Keshav Singhal (success criteria, data collection instruments, materials preparation)*
