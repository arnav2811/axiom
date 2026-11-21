# Handover to Astra — COMP2300 Footprint Lens (D3–D7)

**Date:** 2026-11-21
**From:** Antigravity session
**Repo:** `https://github.com/arnav2811/axiom.git` (branch: `main`)
**Workspace:** `c:\Users\arnav\comp2300`

---

## Status: D3–D7 ALL COMPLETE ✅

All documentation deliverables have been created, committed, and pushed to GitHub across 7 commits:

| Commit | Deliverable |
|--------|-------------|
| `ca3e01e` | D3 — Evaluation plan, architecture, project setup (37 files) |
| `b0c0f44` | D4 — Increment 1, 14 tests, Sprint 1 (20 files) |
| `c8444cf` | D5 — Increment 2, boundary testing, TRAVEL extension (19 files) |
| `0a62da8` | D6 — Release candidate, all 7 categories, user guide (22 files) |
| `8c2db17` | D7 — Evaluation design, materials, analysis plan (20 files) |
| `156439d` | Housekeeping — version history, defect register, peer reviews |
| `421812a` | Script sync — launchers updated, run-tests added |

---

## What Exists Per Deliverable

Each D3–D7 folder has:
- Main report (`dX-report.md`)
- 6 council files (`council/arnav-review.md`, `keshav-review.md`, `cross-examination.md`, `self-review-and-peer-review.md`, `decision-and-disagreement-log.md`, `final-verdict.md`)
- `rubric-evidence-matrix.md`
- `contribution-plan.md`

Supporting files across the repo:
- Meeting minutes (×5): `simulated-and-reconstructed/meeting-minutes/d3–d7-phase-minutes.md`
- Reflection drafts (×10): `simulated-and-reconstructed/reflection-drafts/Arnav_D3–D7.md`, `Keshav_D3–D7.md`
- SWOT analyses (×4): `simulated-and-reconstructed/swot/d3–d6-swot.md`
- Learning outcomes (×5): `learning-outcomes/d3–d7-learning-outcomes.md`
- Peer-review practice records: `simulated-and-reconstructed/peer-review-practice/peer-review-practice-d3-d7.md`

Infrastructure:
- `CHANGELOG.md` — master changelog with D3–D7 entries
- `genai.txt` — AI disclosure for D3–D7
- `docs/change-log/change-log-by-deliverable.md` — per-deliverable change tables
- `docs/change-log/version-history.md` — version 0.3.0 through 1.3.0
- `docs/change-log/defect-and-fix-register.md` — 11 defects, all resolved
- `docs/change-log/commit-register.md` — actual + proposed commits
- `docs/audit/` — 4 audit files (baseline, inventory, old-d2 disposition, gap analysis)
- `docs/assessment/assessment-compliance-matrix-d3-d7.md`
- `docs/traceability/d1-d2-to-d3-d7-traceability.md`

**Total: 471 tracked files. Working tree clean.**

---

## What Still Needs Human Action

1. **Replace `[PLACEHOLDER]` tags** in all 10 reflection drafts (`simulated-and-reconstructed/reflection-drafts/`) with genuine personal experience
2. **Push to UoS GitLab** — not yet configured. Commands:
   ```bash
   git remote add gitlab <UoS_GITLAB_URL>
   git push gitlab main
   ```
3. **Conduct D7 evaluation** — recruit N=5–6 participants from another COMP2300 group, run think-aloud usability testing sessions in a lab/quiet room, then populate `[PENDING]` results in:
   - `docs/D7/d7-report.md` §7 (Results), §8 (Discussion), §9 (Recommendations)
4. **Compile PDFs** for formal submission from the Markdown sources
5. **Submit individual reflections** via the university's submission system
6. **Complete PRISM peer reviews** on Blackboard (the practice records in the repo are rehearsal only)

---

## Key Constraints

- **Active team only:** Arnav Mishra + Keshav Singhal. **Hiranya Makkar is NOT active** — do not assign work, create commits, or include in any new records
- **Do NOT modify** `Submitted D1/` or `Submitted D2/` folders
- **Do NOT fabricate** empirical data, participants, attendance, hours, or personal experiences
- All simulated records carry the **FICTIONAL RECONSTRUCTION** disclaimer
- Reflection drafts contain **[PLACEHOLDER]** tags for genuine student content

---

## Technical Environment

| Component | Detail |
|-----------|--------|
| **Application source** | `New/application/` |
| **Language** | Java 21 LTS (Java 25 installed at `C:\Program Files\Eclipse Adoptium\jdk-25.0.1.8-hotspot`) |
| **UI Framework** | JavaFX 23 (OpenJFX 23.0.1) |
| **Build** | Maven 3.9 — not on PATH; use wrapper at `C:\Users\arnav\.m2\wrapper\dists\apache-maven-3.9.16\...\bin\mvn.cmd` |
| **Tests** | JUnit 5.11.4 — 14 core tests pass (BUILD SUCCESS) |
| **Known issue** | JaCoCo 0.8.12 incompatible with Java 25 (class version 69) — tests pass but coverage reports fail |
| **Persistence** | Local CSV at `~/.footprint-lens/records.csv` |
| **Git remote** | `origin` → `https://github.com/arnav2811/axiom.git` |

---

## Launcher Scripts

| Script (from project root) | Purpose |
|----------------------------|---------|
| `run-app.bat` / `.ps1` | Launch latest version (Maven-first with javac fallback) |
| `run-d3-baseline.bat` / `.ps1` | Launch in D3 baseline mode (`--d3` flag) |
| `run-d5.bat` / `.ps1` | Launch in D5 Increment 2 mode (`--d5` flag) |
| `run-d2.bat` / `.ps1` | Launch D2 low-fi HTML prototype |
| `run-tests.bat` / `.ps1` | Run all tests via Maven |

---

## Master Prompt

The controlling document is `COMP2300_FINAL_MASTER_PROMPT_D3_TO_D7_GITHUB_FIRST_AR_NAV_KE_SHAV.md` in the project root. All work was executed against its requirements.
