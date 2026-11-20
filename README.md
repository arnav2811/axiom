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
- **D4–D7:** Planned

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
    D3/                           # D3 deliverable documents
      evaluation-materials/       # 6 evaluation materials files
      council/                    # 6 council review files
    audit/                        # Repository audit documents
    assessment/                   # Rubric compliance matrix
    traceability/                 # D1→D7 traceability chain
    change-log/                   # Detailed change records
  simulated-and-reconstructed/    # Fictional meeting minutes, reflections
  learning-outcomes/              # Learning outcome records
  CHANGELOG.md                    # Master changelog
  genai.txt                       # AI assistance disclosure
```

## Running the Application

```bash
cd New/application
mvn clean javafx:run
```

Or use the provided scripts:
- Windows: `New/application/run-app.bat`
- PowerShell: `New/application/run-app.ps1`

## Running Tests

```bash
cd New/application
mvn clean verify
```

Or run the headless smoke test:
```bash
java -cp "build/classes;build/test-classes" in.carbon.core.CoreSmoke
```

## AI Assistance

This project uses AI assistance as disclosed in `genai.txt`. All AI-generated content is reviewed and confirmed by team members before inclusion.
