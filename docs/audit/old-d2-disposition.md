# Old D2 (New/) Disposition Report

**Date:** 2026-11-20  
**Purpose:** Classify material in `New/` as reusable, superseded, or historical

---

## Status

The `New/` directory was created by a prior AI session and contains extensive material including a working Java/JavaFX application, D2–D5 reports, simulated records, and documentation. Per the master prompt, the **submitted D2** in `Submitted D2/` is the sole design baseline; the old D2 concept/prototype work in `New/` is **superseded** for design authority.

## Disposition Matrix

### ✅ REUSE — Technical Material (Verified Against Submitted D2)

| Path | Description | Reuse Justification |
|------|-------------|-------------------|
| `New/application/src/main/java/in/carbon/core/` | Domain model classes (Activity, Factor, Estimate, CarbonService, etc.) | Pure Java domain logic consistent with D2 DP1–DP5; 100% headless-testable |
| `New/application/src/main/java/in/carbon/ui/FootprintLensApp.java` | JavaFX desktop shell | Implements D2 P0–P6 interaction model |
| `New/application/src/main/resources/style.css` | UI stylesheet | Visual styling |
| `New/application/src/test/java/in/carbon/core/` | CoreSmoke.java, CarbonServiceTest.java | Domain tests |
| `New/application/pom.xml` | Maven build configuration | Java 21 + OpenJFX 23 build setup |
| `New/application/scripts/` | Build scripts | Build automation |
| `run-app.bat`, `run-app.ps1`, `run-d3-baseline.bat`, etc. | Root launchers | Convenience run scripts |

### ⚠️ INSPECT AND ADAPT — Documentation

| Path | Description | Action |
|------|-------------|--------|
| `New/D3/` through `New/D7/` | Deliverable documentation folders | Inspect for structure/ideas; do NOT treat as submitted content |
| `New/docs/` | Architecture, evaluation, testing docs | Inspect for reusable technical analysis |
| `New/simulated-and-reconstructed/` | Meeting minutes, peer reviews, reflections | Contains references to Hiranya — must be revised to 2-person team |
| `New/learning-outcomes/` | Learning outcome records | Inspect and adapt |
| `New/CHANGELOG.md` | Master changelog | Adapt for current phase |

### ❌ SUPERSEDED — Do Not Base D3 On

| Path | Description | Reason |
|------|-------------|--------|
| `New/D2/` | Old D2 concept and prototype | Superseded by `Submitted D2/` |
| `New/D2/prototype/` | HTML/JS low-fi prototype | D2 prototype was Figma-based in submitted version |
| `New/D2/report/` | Old D2 report LaTeX | Superseded by submitted D2 report |
| `New/D2/conceptual-design-working.md` | Old D2 working document | Superseded |
| `New/strategy.md`, `New/logic.md` | Planning documents | Historical context only |

### 📁 HISTORICAL — Preserve for Git History

| Path | Description |
|------|-------------|
| `New/POC/` | Proof-of-concept and release staging | Historical only |
| `New/reports/word/` | D2 review pack RTF | Historical only |
| `New/.github/` | GitHub modernisation hooks | May be useful |

## Key Reuse Decisions

1. **Application Code:** The `New/application/` codebase is consistent with the submitted D2's technical direction (Java 21 + JavaFX, clean 4-layer architecture, DP1–DP5 compliance). It will be used as the starting point for D3 technical setup and D4–D6 increments.

2. **Tri-Mode UI:** The existing application supports D3 Baseline, D4 Increment 1, and D5 Increment 2 modes via a segmented switcher. This demonstrates continuous progression and will be carried forward.

3. **Domain Model:** The `in.carbon.core` package faithfully implements D2's design principles (epistemic honesty, protected choices, communal boundaries). This is verified by the CoreSmoke test suite (10/10 pass).

4. **Simulated Records:** Existing records in `New/simulated-and-reconstructed/` reference Hiranya Makkar. All new records must exclude Hiranya per the active membership override.
