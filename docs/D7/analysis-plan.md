# D7 Analysis Plan

**Purpose:** Detailed methodology for analysing data collected during the think-aloud usability evaluation.

---

## 1. Data Sources

| Source | Format | Content |
|--------|--------|---------|
| Observation sheets | Paper/digital forms | Task success, time, errors, navigation notes |
| Audio recordings | MP3/WAV | Think-aloud verbalisations |
| Screen recordings | MP4 | User interactions, navigation paths |
| SUS questionnaires | Paper forms | 10-item SUS responses (1–5 scale) |
| SEQ ratings | Task cards | Per-task ease rating (1–7) |
| Debrief notes | Facilitator notes | Open-ended participant feedback |

---

## 2. Quantitative Analysis Procedures

### 2.1 Task Completion Rate

For each task (T1–T5) and each participant (P1–P6):
- Code as **Success** (1) or **Failure** (0)
- A task is "Success" if the participant achieves the stated success criterion within the max time
- Partial completion counts as Failure unless the core criterion is met

**Calculation:**
- Per-task rate = (number of successes) / (number of participants) × 100%
- Overall rate = (total successes across all tasks and participants) / (total task attempts) × 100%

### 2.2 SUS Score Calculation

Following Brooke (1996):

1. For each **odd-numbered** item (1, 3, 5, 7, 9): subtract 1 from the score
2. For each **even-numbered** item (2, 4, 6, 8, 10): subtract the score from 5
3. Sum the adjusted scores (range: 0–40)
4. Multiply by 2.5 to get the SUS score (range: 0–100)

**Interpretation (Bangor et al., 2009):**

| SUS Score | Adjective Rating | Grade |
|-----------|-------------------|-------|
| 85.5+ | Best Imaginable | A+ |
| 80.3+ | Excellent | A |
| 68.0+ | Good | B |
| 51.0+ | OK | C |
| 25.0+ | Poor | D |
| < 25.0 | Worst Imaginable | F |

Report: Mean SUS, SD, min, max, and per-participant scores.

### 2.3 SEQ Analysis

For each task:
- Compute mean and standard deviation of SEQ scores (1–7)
- Flag tasks with mean SEQ < 5.0 as potential usability concerns
- Compare across tasks to identify relatively harder tasks

Benchmark (Sauro & Dillman, 2009): Mean SEQ of 5.5 is "acceptable."

### 2.4 Task Time Analysis

For each task:
- Record time from task card handover to completion indicator
- Compute mean and SD
- Compare to target time
- Flag tasks exceeding 150% of target as potentially problematic

### 2.5 Error Analysis

Categorise observed errors:

| Category | Definition | Example |
|----------|-----------|---------|
| **Critical** | Data loss, crash, unrecoverable state | Application freezes during save |
| **Non-critical** | Incorrect action, recoverable | Saves without selecting category, gets validation error |
| **Navigation** | Goes to wrong screen, backtracks | Looks in Dashboard for export function |
| **Input** | Enters wrong data format, corrects | Types text in numeric field |

Report: Error count per category per task; identify error-prone tasks.

---

## 3. Qualitative Analysis Procedures

### 3.1 Think-Aloud Transcript Coding

1. **Transcription:** Transcribe audio recordings verbatim (or near-verbatim with time stamps)
2. **Segmentation:** Break transcript into utterance units (complete thoughts/sentences)
3. **Open coding:** Apply initial codes to each utterance:

| Code | Abbreviation | Definition |
|------|-------------|-----------|
| Confusion | C | Participant expresses uncertainty about what to do or what happened |
| Expectation Mismatch | E | Participant expected something different from what occurred |
| Positive Feedback | P | Participant expresses satisfaction or understanding |
| Feature Request | F | Participant suggests an improvement or additional feature |
| Strategy | S | Participant explains their approach or reasoning |
| Recovery | R | Participant recovers from an error or confusion |

4. **Code frequency:** Count occurrences of each code per task and overall

### 3.2 Affinity Diagramming

1. Write each coded utterance on a sticky note (or digital equivalent)
2. Group related notes into clusters
3. Name each cluster (theme)
4. Identify relationships between themes
5. Prioritise themes by frequency and severity

### 3.3 Usability Issue Severity Rating

For each identified usability issue, assign severity (Nielsen, 1994):

| Severity | Description | Action |
|----------|-------------|--------|
| 0 | Not a usability problem | None |
| 1 | Cosmetic problem only | Fix if time permits |
| 2 | Minor usability problem | Low priority fix |
| 3 | Major usability problem | Important to fix |
| 4 | Usability catastrophe | Must fix before release |

Two raters (Arnav and Keshav) independently rate severity; resolve disagreements through discussion.

---

## 4. Triangulation Strategy

| Finding Type | Quantitative Signal | Qualitative Signal | Action |
|-------------|--------------------|--------------------|--------|
| Usability issue confirmed | Low SEQ + high errors | Confusion/mismatch codes | High priority fix |
| Design principle validated | High completion + fast time | Positive feedback codes | Celebrate and maintain |
| Feature gap identified | N/A | Feature request codes | Add to backlog |
| False positive (tool issue) | Low time but confusion | Recovery codes | Monitor, may not need fix |

---

## 5. Reporting Template

The final analysis will be structured as:

1. **Participant summary table** (demographics, experience)
2. **Quantitative results** (task completion, SUS, SEQ, times, errors)
3. **Qualitative themes** (coded themes with example quotes)
4. **Usability issue list** (ranked by severity, with recommendations)
5. **Design principle validation** (evidence for/against each DP)
6. **Limitations and threats to validity**
7. **Recommendations** (prioritised by impact and effort)

---

## References

- Bangor, A., Kortum, P., & Miller, J. (2009). *Journal of Usability Studies*, 4(3), 114–123.
- Brooke, J. (1996). SUS: A "quick and dirty" usability scale.
- Nielsen, J. (1994). *Usability Engineering*.
- Sauro, J., & Dillman, J. R. (2009). *Proceedings of CHI 2009*.
