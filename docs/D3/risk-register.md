# D3 Risk Register

**Deliverable:** D3 — Project Setup (Risk Management)  
**Authors:** Arnav Mishra, Keshav Singhal  
**Last Updated:** 2026-11-20

---

## Risk Assessment Matrix

**Likelihood:** 1 (Very Unlikely) → 5 (Very Likely)  
**Impact:** 1 (Negligible) → 5 (Severe)  
**Risk Score:** Likelihood × Impact  
**Threshold:** Score ≥ 9 = High priority; Score ≥ 6 = Medium priority

---

## Risk Register

| ID | Risk Description | Category | Likelihood (1–5) | Impact (1–5) | Score | Early Warning | Mitigation Strategy | Contingency | Owner | Status |
|----|-----------------|----------|:-:|:-:|:-:|---------------|--------------------|----|-------|--------|
| R01 | **Team reduced to 2 members** — only Arnav and Keshav are active, reducing development capacity by ~33% from the original 3-person team. | Personnel | 5 | 4 | **20** | Already realised | Reallocate Hiranya's planned work between Arnav and Keshav. Focus on Must-Have stories only. Reduce scope of Could-Have features. Use MoSCoW to protect core value delivery. | Defer US-11 (benchmarks) and reduce US-10 (dashboard) scope if needed. | Both | **Active** |
| R02 | **JavaFX build environment inconsistency** — different Java/JavaFX versions on team machines or submission environment cause build failures. | Technical | 3 | 5 | **15** | Build fails on one machine but passes on another | Pin exact versions in `pom.xml` (Java 21, OpenJFX 23.0.1). Include `run-app.bat` and `run-app.ps1` scripts. Test build on clean machine before submission. | Provide Maven wrapper (`mvnw`) for reproducible builds. | Keshav | **Mitigated** |
| R03 | **UoS GitLab access or configuration issues** — team cannot push to assessed GitLab repository due to permissions, SSH keys, or network issues. | Infrastructure | 3 | 4 | **12** | Cannot push/pull from GitLab remote | Use GitHub as working repository first. Prepare exact GitLab push commands. Test GitLab access early in Sprint 1. Document handover procedure. | Submit zip archive with full Git history if GitLab push fails. Provide handover checklist. | Arnav | **Monitoring** |
| R04 | **D7 evaluation participant recruitment failure** — cannot recruit sufficient participants from another COMP2300 group for the final usability evaluation. | Evaluation | 3 | 4 | **12** | No responses to recruitment messages by 1 week before evaluation | Begin recruitment early (during Sprint 2). Contact multiple groups. Use Microsoft Teams, lab sessions, and seminars. Plan for minimum N=5. | Extend recruitment window. If fewer than 5, acknowledge reduced sample in D7 report and supplement with cognitive walkthrough. | Arnav | **Planned** |
| R05 | **Scope creep** — adding unnecessary features that delay delivery of core Must-Have stories. | Management | 3 | 3 | **9** | Stories added mid-sprint; burndown stalls | Strict MoSCoW prioritisation. Lock sprint backlog at planning. Only Product Owner can add stories, and only to future sprints. Council reviews challenge scope additions. | Drop Could-Have stories (US-10, US-11) to protect sprint goal. | Arnav | **Monitoring** |
| R06 | **Carbon emission factor accuracy disputes** — users or assessors question the validity of hardcoded emission factors. | Domain | 2 | 4 | **8** | Questions about factor sources in feedback | Every `Factor` record stores source, referenceYear, geography, and FactorStatus. UI displays provenance transparently. Use only published government sources (CEA, MoEFCC). Mark illustrative factors explicitly. | Add `USER_SUPPLIED` factor option allowing users to override with their own sourced values. Already implemented. | Arnav | **Mitigated** |
| R07 | **Data loss through CSV corruption** — application crash during write causes partial or corrupted `records.csv`. | Technical | 2 | 4 | **8** | Truncated or unreadable CSV file | `LocalStore` uses atomic write pattern: write to temp file, then rename. Validate CSV headers on load. | Implement backup copy before overwrite. Alert user on load failure with option to start fresh. | Keshav | **Mitigated** |
| R08 | **Accessibility non-compliance** — final prototype fails keyboard navigation or colour contrast requirements, losing marks on usability. | Quality | 3 | 3 | **9** | Tab-focus skips controls; text unreadable on projector | Plan accessibility audit in Sprint 3. Use JavaFX CSS for high-contrast theme. Test keyboard-only navigation for all workflows. Minimum 14pt body text. | Dedicated accessibility sprint task with explicit DoD checklist. | Keshav | **Planned** |
| R09 | **Academic integrity / GenAI disclosure risk** — failure to properly disclose AI assistance could constitute academic misconduct. | Compliance | 2 | 5 | **10** | Missing or incomplete genai.txt | Maintain `genai.txt` with every AI tool used, its purpose, and which outputs were AI-assisted. Disclose Antigravity/Claude usage for D3 planning and documentation. Students review and confirm all AI-generated content. | Update genai.txt before every submission. Flag AI-generated content clearly. | Both | **Active** |
| R10 | **Merge conflicts and lost work** — concurrent edits on the same files cause merge conflicts that lose team members' changes. | Technical | 2 | 3 | **6** | Multiple unmerged branches; conflict markers in files | Use feature branches for each story. Small, frequent commits. Pull before push. Code review before merge. | Manual conflict resolution with both team members present. Git reflog for recovery. | Keshav | **Monitoring** |

---

## Risk Heat Map

```
Impact ↑
  5 │         R02    R09
  4 │  R07,R06  R03,R04  R01
  3 │    R10     R05,R08
  2 │
  1 │
    └──────────────────────→ Likelihood
      1    2    3    4    5
```

---

## Risk Response Summary

| Response Type | Risks | Action |
|--------------|-------|--------|
| **Accept & Adapt** | R01 (team size) | Already realised. Scope adjusted. MoSCoW enforced. |
| **Mitigate** | R02, R06, R07, R09 | Technical safeguards in place (pinned versions, atomic writes, provenance tracking, genai.txt). |
| **Monitor** | R03, R05, R10 | Watch for early warnings. Escalate at weekly check-ins if triggered. |
| **Plan** | R04, R08 | Actions scheduled for specific sprints. |

---

*Authors: Arnav Mishra (risk identification, mitigation strategy), Keshav Singhal (technical risk analysis, scoring)*
