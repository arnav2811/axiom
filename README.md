# Footprint Lens — COMP2300 Software Engineering Group Project

## Product

**Footprint Lens: Contextual Choice Coach** — An India-centric carbon footprint awareness and reduction desktop application built with Java 21 and JavaFX 23.

Footprint Lens helps Indian households understand their carbon footprint through transparent, region-specific emission data, constraint-aware coaching that respects non-discretionary lifestyle choices, and clear separation of household versus personal scope.

## Team

| Member | Role |
|--------|------|
| **Arnav Mishra** | Product Owner, Research Lead, Evaluation Design, Documentation |
| **Keshav Singhal** | Scrum Master, Engineering Lead, Architecture, Testing, Build |

## Current Stage

- **D1:** ✅ Submitted (`Submitted D1/`)
- **D2:** ✅ Submitted (`Submitted D2/`)
- **D3:** ✅ Complete — evaluation plan, architecture, project plan, project setup
- **D4:** ✅ Complete — Sprint 1 delivery, 14 tests, design evolution
- **D5:** ✅ Complete — boundary/partition testing, TRAVEL extension, 20+ tests
- **D6:** ✅ Complete — release candidate, all 7 categories, dashboard, user guide, 28+ tests
- **D7:** ✅ Complete — evaluation design, materials, analysis plan (results [PENDING])

## Repository

- **Working Repository:** [GitHub](https://github.com/arnav2811/axiom.git) (branch: `main`)
- **Assessed Repository:** UoS GitLab (configuration pending)

## Technology Stack

| Component | Technology |
|-----------|-----------|
| Language | Java 21 LTS |
| UI Framework | JavaFX 23 (OpenJFX 23.0.1) |
| Build | Apache Maven 3.9+ |
| Testing | JUnit Jupiter 5.11.4, JaCoCo 0.8.12 |
| Persistence | Local CSV (`~/.footprint-lens/records.csv`) |

## Project Structure

```
comp2300/
  Submitted D1/                   # Immutable D1 baseline
  Submitted D2/                   # Immutable D2 baseline
  New/application/                # Java/JavaFX application source
    src/main/java/in/carbon/
      core/                       # Pure domain logic (zero JavaFX deps)
      ui/                         # JavaFX presentation layer
    src/test/java/in/carbon/core/ # Test suite
    pom.xml                       # Maven build descriptor
  docs/
    D3/                           # Evaluation plan, architecture, project plan, setup
      evaluation-materials/       # 6 evaluation materials files
      council/                    # 6 council review files
    D4/                           # Sprint 1 review, architecture evolution
      council/                    # 6 council review files
    D5/                           # Sprint 2 review, boundary testing, Sprint 3 plan
      council/                    # 6 council review files
    D6/                           # Sprint 3 review, user guide, final architecture
      council/                    # 6 council review files
    D7/                           # Final evaluation report, analysis plan
      evaluation-materials/       # 6 updated evaluation materials
      council/                    # 6 council review files
    audit/                        # Repository audit documents
    assessment/                   # Rubric compliance matrix
    traceability/                 # D1→D7 traceability chain
    change-log/                   # Detailed change records
  simulated-and-reconstructed/    # Fictional meeting minutes, reflections, SWOT
  learning-outcomes/              # Learning outcome records (D3-D7)
  CHANGELOG.md                    # Master changelog (D3-D7)
  genai.txt                       # AI assistance disclosure (D3-D7)
```

## Running the Application

**Recommended (Maven):**
```bash
cd New/application
mvn clean javafx:run
```

**1-Click Launchers (from project root):**

| Script | Description |
|--------|-------------|
| `run-app.bat` / `run-app.ps1` | Launch latest version (tries Maven first, falls back to javac) |
| `run-d3-baseline.bat` / `.ps1` | Launch in D3 architectural baseline mode (`--d3`) |
| `run-d5.bat` / `.ps1` | Launch in D5 Increment 2 mode (`--d5`) |
| `run-d2.bat` / `.ps1` | Launch D2 low-fi HTML prototype |
| `run-tests.bat` / `.ps1` | Run all tests via Maven |

**From inside `New/application/`:**
- `run-app.bat` / `run-app.ps1` — direct launch
- `run-d3-baseline.bat` / `.ps1` — D3 mode
- `scripts/build.ps1` — build and verify

## Running Tests

```bash
cd New/application
mvn clean test
```

Or from project root:
```
run-tests.bat
```

## AI Assistance

This project uses AI assistance as disclosed in `genai.txt`. All AI-generated content is reviewed and confirmed by team members before inclusion.
