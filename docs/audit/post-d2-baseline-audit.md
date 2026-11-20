# Post-D2 Baseline Audit

**Date:** 2026-11-20  
**Auditor:** Astra/OPUS (AI-assisted)  
**Purpose:** Establish the authoritative baseline for D3–D7 development

---

## 1. Repository State

| Item | Status | Notes |
|------|--------|-------|
| **Git Remote** | `origin` → `https://github.com/arnav2811/axiom.git` | GitHub working repository |
| **Branch** | `main` | Single branch; clean working tree |
| **Latest Commit** | `00846b2` "Basing 0" | 20 commits total |
| **UoS GitLab** | **NOT CONFIGURED** | No GitLab remote found — must be added for assessed submissions |

## 2. Submitted Deliverables (IMMUTABLE)

### Submitted D1/ — Understanding the Problem Space
- **Status:** ✅ Complete and submitted
- **Product Name in D1:** CarbonSaathi
- **Report:** `COMP2300_Team1_AM_KS_HM.pdf` (compiled PDF)
- **LaTeX Sources:** `Comp_2300/main.tex` and 10+ section `.tex` files
- **Individual Reflection:** `Arnav_Mishra_D1_Individual_Reflection.md`, `Individual_Reflective_Report_D1_ArnavMishra.md`
- **Meeting Records:** Weeks 6–7 (PDF)
- **Peer Reviews:** Weeks 6–7 (PDF)
- **Key Content:**
  - Literature review (2 sides A4): carbon calculators, tracking apps, HCI eco-feedback
  - Thematic analysis of CF1–CF10 transcripts: 3 semantic themes (S1–S3), 3 latent themes (L1–L3)
  - 6 personas (P1–P6) across 3 stakeholder groups
  - 4 scenarios (SC1–SC4)
  - JTBD and MoSCoW-prioritised epics
  - 3 research questions (RQ1–RQ3)

### Submitted D2/ — Conceptual Design
- **Status:** ✅ Complete and submitted
- **Product Name in D2:** Footprint Lens: Contextual Choice Coach
- **Report:** `COMP2300_D2_Report.pdf` (compiled PDF)
- **LaTeX Sources:** `COMP2300_D2/main.tex` and multiple version `.tex` files
- **Individual Reflection:** `Arnav_Mishra_D2_Individual_Reflection.md`
- **Meeting Records:** Weeks 8–10 (.docx)
- **Peer Reviews:** Weeks 8–10 (.docx)
- **Evidence:**
  - Figma wireframes: `evidence/figma/` (16 PNG files, P0–P6 states)
  - Hand-drawn sketches: `evidence/sketches/` (3 JPG files: concepts, divergent, refinement)
- **Key Content:**
  - 8 response families synthesised into 3 distinct concepts
  - Concept A (Contextual Choice Coach) selected via weighted MCDM
  - 5 design principles (DP1–DP5)
  - MoSCoW user stories with acceptance criteria
  - P0–P6 interaction model with Figma click-through
  - Formative evaluation protocol outlined

## 3. Decisions Already Made by D2

| Decision | Source | Status |
|----------|--------|--------|
| Product name: **Footprint Lens** | D2 §1 | Accepted — do not rename |
| Concept A: **Contextual Choice Coach** | D2 §4 | Selected — do not replace |
| Java + JavaFX implementation | Official spec | Mandatory |
| 5 Design Principles (DP1–DP5) | D2 §1.2 | Accepted — carry forward |
| 7 activity categories | D2 user stories | Accepted |
| CSV local persistence (zero cloud) | D2 technical direction | Accepted |
| Epistemic honesty (unavailable ≠ zero) | D2 DP1 | Accepted |
| Protected choice flag | D2 DP2 | Accepted |
| Household/Personal scope separation | D2 DP4 | Accepted |
| Think-aloud usability testing for final eval | D2 §7 | Proposed — confirm in D3 |

## 4. Superseded Material

The `New/` directory contains extensive prior AI-generated work from an earlier session. Per the master prompt, this is **superseded** — the submitted D2 in `Submitted D2/` is the authority.

**However**, `New/` contains reusable **technical** material:
- Working Java/JavaFX application code (`New/application/`)
- Build scripts and Maven `pom.xml`
- Tests (`CoreSmoke.java`, `CarbonServiceTest.java`)
- Run scripts at repo root (`run-app.bat`, `run-d3-baseline.bat`, `run-d5.bat`)

See `docs/audit/old-d2-disposition.md` for detailed disposition.

## 5. Active Team

| Member | Role | Status |
|--------|------|--------|
| **Arnav Mishra** | Product Owner, Research & Strategy Lead | ✅ Active |
| **Keshav Singhal** | Scrum Master, Engineering Lead | ✅ Active |
| Hiranya Makkar | — | ❌ **NOT ACTIVE** for D3–D7 |

## 6. Environment

| Component | Version/Detail |
|-----------|---------------|
| Java | 21 (required) |
| JavaFX (OpenJFX) | 23 |
| Build Tool | Maven (pom.xml in `New/application/`) |
| VCS | Git, GitHub (working), UoS GitLab (required, not yet configured) |
| OS | Windows |

## 7. Outstanding Actions for D3

1. ⚠️ **Configure UoS GitLab remote** — required for assessed submissions
2. ⚠️ **Verify Java 21 and JavaFX 23 are installed** on development machine
3. ⚠️ **Verify Maven is installed** and application builds
4. ⚠️ **Update README.md** to reflect 2-person team and D3 focus
5. ⚠️ **Update genai.txt** to disclose current AI session
