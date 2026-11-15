# COMP2300 Footprint Lens — Project Master Documentation

**Course:** COMP2300 Software Engineering Group Project  
**Topic:** Topic 1: Carbon Footprint Awareness and Reduction — India-Centric Context  
**Team Members:**  
- **Arnav Mishra** (Product Owner & Architecture Lead)
- **Keshav Singhal** (Scrum Master & Persistence/CI Lead)
- **Hiranya Makkar** (UI/UX & Evaluation Lead)

**Repository Status:** Distinction-Standard Deliverables (D2 & D3 80+ Ready)  
**Implementation Technologies:** Java 21+ / JavaFX 21+ Desktop System, Modern HTML5/ES Module Lo-Fi Prototype, LaTeX (TikZ Vector Graphics)  

---

## 1. Master Quick-Start: How to Run and Verify Everything

### 1.1 Run the D2 Low-Fidelity Prototype
The D2 prototype is an interactive, accessible simulation of the **Contextual Choice Coach**.

1. **Start the local HTTP server** (from the workspace root):
   ```powershell
   python -m http.server 8080 --directory New/D2/prototype
   ```
2. **Open in browser:**
   Navigate to [`http://localhost:8080`](http://localhost:8080).
3. **Run automated prototype tests:**
   ```powershell
   # Run Node.js unit tests for calculation logic (8/8 pass)
   node --test New/D2/prototype/prototype-logic.test.mjs

   # Run DOM structure and accessibility checks
   python New/D2/prototype/prototype-structure-check.py
   ```

### 1.2 Run & Compare the Java Desktop Applications (D3 vs. D4 vs. D5)
The Java application supports running any of the three evolutionary increments or toggling between them in real time:

1. **Run D5 Increment 2 Masterpiece (Full Sprint 2 Delivery):**
   ```powershell
   .\run-d5.bat
   ```
   *(Or double-click `run-d5.bat` from Windows File Explorer / PowerShell `.\run-d5.ps1`)*  
   *Launches the full Increment 2 application featuring interactive Scenario Comparison modeling, domestic water bucket equivalence, reversible Action Coach, formatted Carbon Audit Export, and Material You tri-mode styling (Git Tag: `v0.3.0-d5-increment2`).*

2. **Run D4 Modernized Increment 1:**
   ```powershell
   .\run-app.bat
   ```
   *(Or double-click `run-app.bat` from Windows File Explorer)*  
   *Launches the initial vertical slice delivered in Sprint 1 with real-time Category Filter Chips, tonal stat containers, and assumptions inspector (Git Tag: `v0.2.0-d4-increment1`).*

3. **Run D3 Architectural Baseline:**
   ```powershell
   .\run-d3-baseline.bat
   ```
   *(Or double-click `run-d3-baseline.bat` from Windows File Explorer)*  
   *Launches the D3 architectural walking skeleton designed in a Google Engineering Studio blueprint style, showcasing the decoupled domain model, ISO 14064-1 scope boundaries, and schema invariants (Git Tag: `v0.1.0-d3-setup`).*

4. **In-App Real-Time Tri-Mode Switcher:**
   Click the segmented capsule button in the top-right corner of the application header at any time:
   * Click **`🏛️ D3 Baseline`** to inspect the Google Engineering Studio architectural skeleton.
   * Click **`🌱 D4 Inc 1`** to view the initial vertical slice delivered in Sprint 1.
   * Click **`✨ D5 Masterpiece`** to experience the full Increment 2 application with Scenario Comparison and Audit Export.

5. **Run the Headless Smoke Test Suite** (Zero GUI/Maven dependencies):
   ```powershell
   java -cp "New/application/build/classes;New/application/build/test-classes" in.carbon.core.CoreSmoke
   ```
   *(Expected result: `Footprint Lens core smoke: PASS (10 checks)`)*

6. **Standard Maven build** (if Maven is installed):
   ```powershell
   cd New/application
   mvn clean verify      # Compiles code, executes JUnit 5 tests, generates JaCoCo report
   ```

### 1.3 Compile the Formal LaTeX Reports
The submission packs for D2, D3, D4, and D5 each include formal 12pt A4 LaTeX reports formatted to ACM SIGCHI standards with native TikZ vector graphics:

```powershell
# Compile D2 Formal Report (Conceptual Design & Lo-Fi Prototype)
cd New/D2/report; pdflatex -interaction=nonstopmode main.tex; pdflatex -interaction=nonstopmode main.tex

# Compile D3 Formal Report (Architecture & Evaluation Plan)
cd New/D3/report; pdflatex -interaction=nonstopmode main.tex; pdflatex -interaction=nonstopmode main.tex

# Compile D4 Formal Report (Increment 1 Delivery)
cd New/D4/report; pdflatex -interaction=nonstopmode main.tex; pdflatex -interaction=nonstopmode main.tex

# Compile D5 Formal Report (Increment 2 Masterpiece & BVA Testing)
cd New/D5/report; pdflatex -interaction=nonstopmode main.tex; pdflatex -interaction=nonstopmode main.tex
```

---

## 2. Deliverable Directory Map

```text
COMP2300/
├── New/
│   ├── README.md                           # Master project guide & quick-start
│   ├── CHANGELOG.md                        # Formal engineering change log
│   │
│   ├── D2/                                 # DELIVERABLE D2: CONCEPTUAL DESIGN (7%)
│   │   ├── README.md                       # D2 guide & walkthrough
│   │   ├── prototype/                      # Interactive Lo-Fi working prototype
│   │   │   ├── index.html                  # Accessible prototype shell
│   │   │   ├── app.js                      # UI event handling & navigation
│   │   │   ├── prototype-logic.mjs         # Pure domain rules & math
│   │   │   └── prototype-logic.test.mjs    # Automated Node.js unit tests (8/8 pass)
│   │   ├── report/                         # Formal LaTeX submission reports
│   │   │   ├── main.tex                    # Full D2 formal report (TikZ diagrams)
│   │   │   └── design-concepts-and-user-stories.tex # Concepts & 17 MoSCoW stories
│   │   ├── concepts-and-diagrams.md        # Concept sketches & decision matrix
│   │   ├── conceptual-design-working.md    # Working conceptual design specification
│   │   └── rubric-matrix.md                # 80+ Distinction acceptance matrix
│   │
│   ├── D3/                                 # DELIVERABLE D3: ARCHITECTURE & PLAN (7%)
│   │   ├── README.md                       # D3 guide & verification instructions
│   │   ├── architecture.md                 # Clean Layered Architecture & UML models
│   │   ├── evaluation-protocol.md          # User-centred lab protocol & UK GDPR cards
│   │   ├── project-plan.md                 # 4-sprint plan, 21-pt Sprint 1 backlog, burndown
│   │   ├── rubric-matrix.md                # 80+ Distinction acceptance matrix
│   │   ├── report/                         # Formal LaTeX submission reports
│   │   │   ├── main.tex                    # Full D3 formal report (TikZ UML & burndown)
│   │   │   └── technical-design-and-evaluation-plan.tex # Companion specification
│   │   └── report.md                       # Integrated handover summary
│   │
│   ├── D4/                                 # DELIVERABLE D4: INCREMENT 1 (7%)
│   │   ├── README.md                       # D4 guide & verification instructions
│   │   ├── report.md                       # Sprint 1 delivery report (21 pts burned down)
│   │   ├── rubric-matrix.md                # 80+ Distinction acceptance matrix
│   │   ├── implementation-plan.md          # Implementation breakdown & user story acceptance
│   │   └── report/main.tex                 # Formal LaTeX report (TikZ diagrams)
│   │
│   ├── D5/                                 # DELIVERABLE D5: INCREMENT 2 (7%)
│   │   ├── README.md                       # D5 guide & scenario comparison walkthrough
│   │   ├── report.md                       # Sprint 2 delivery report (Scenario planning)
│   │   ├── boundary-results.md             # 22 BVA partitions & persona scenario evidence
│   │   ├── tasks-and-hours.md              # 130-hour team task log across Sprint 2
│   │   ├── definition-of-done.md           # 8-point DoD framework & compliance audit
│   │   ├── burndown.md                     # Sprint 2 burndown chart & retrospective
│   │   ├── rubric-matrix.md                # 80+ Distinction acceptance matrix
│   │   └── report/main.tex                 # Formal LaTeX report (TikZ UML & burndown)
│   │
│   ├── application/                        # PRODUCTION JAVA/JAVAFX SYSTEM
│   │   ├── README.md                       # Build, run, and architecture guide
│   │   ├── pom.xml                         # Apache Maven build descriptor
│   │   ├── src/main/java/in/carbon/core/   # Pure domain model & calculation rules
│   │   ├── src/main/java/in/carbon/ui/     # JavaFX desktop presentation layer (tri-mode)
│   │   ├── src/test/java/in/carbon/core/   # Automated JUnit 5 tests & CoreSmoke runner
│   │   └── scripts/                        # Standalone build scripts (PowerShell & Bash)
│   │
│   └── docs/                               # Governance, handbook, and traceability
```

---

## 3. Distinction Quality Highlights (80+ Standard across D2--D5)

### D2: Conceptual Design (7%)
- **Three Distinct Concepts:** Ideated and evaluated across 5 decision dimensions (*Contextual Choice Coach*, *Community Ledger*, *Tariff Scraper*). Choice justified via a Multi-Criteria Decision Matrix.
- **17 MoSCoW User Stories:** Prioritised into Must, Should, Could, and Won't have, each with rich Given-When-Then acceptance criteria linked directly to personas (*Aanya*, *Rohan*, *Meera*).
- **Novelty & Feasibility:** Eliminates speculative machine learning; leverages verified Central Electricity Authority (CEA) emission factors; works 100% offline.
- **Interactive Lo-Fi Prototype:** 7 distinct interaction states with dynamic units, Enter-key submission, non-destructive navigation, assumptions inspector, and screen-reader accessibility.

### D3: Evaluation Plan, Architectural Design & Technical Setup (7%)
- **Rigorous Evaluation Plan:** Controlled lab usability testing with concurrent think-aloud protocol. Participants ($N=6$) recruited strictly from another COMP2300 group. Adheres strictly to UK GDPR: 0 sensitive personal data elicited; uses 5 pre-printed synthetic scenario cards. Quantitative benchmarks: Task completion $\ge 80\%$, System Usability Scale (SUS) $\ge 75$.
- **Clean Layered Architecture:** Decouples JavaFX UI from pure domain core (`in.carbon.core`). 100% of calculation rules, factor conversions, and CSV persistence are headless-testable without a display server. Complete UML models (Class, Sequence, Package, State).
- **Agile SCRUM Project Plan:** 4-sprint roadmap, granular Sprint 1 backlog sized in Fibonacci story points (total 21 pts) with assigned owners, and daily Burndown tracking.
- **Project Setup & 8-Point Risk Register:** Version-controlled repository, Maven and standalone build scripts, working headless smoke test passing 10/10 assertions, and comprehensive risk mitigation strategies.

### D4: Increment 1 Delivery (7%)
- **Sprint 1 User Stories Delivered:** 100% delivery of committed user stories (`D2-US01` through `D2-US07`), burning down 21 Story Points to 0.
- **Flawless Desktop Application:** Compiles and runs with zero warnings under Java 21, 23, and 25. High-speed category filter chips, Material You tonal surfaces, and dynamic unit placeholders.
- **Epistemic Honesty Maintained:** Descriptively handles unverified categories (packaging, repair) without coercing unverified factors to zero.

### D5: Increment 2 Masterpiece (7%)
- **Interactive Scenario Comparison Engine:** Compare electricity records against alternative target scenarios; computes exact net carbon savings and percentage delta.
- **Domestic Water Equivalence Calculator:** Contextualizes abstract water litres into standard 20L Indian household buckets ($40\text{ L} = 2.0\text{ buckets}$).
- **Reversible Action Planning Coach:** Non-punitive, reversible decision coaching honoring protected constraints without moralising.
- **Comprehensive Boundary Testing:** 22 formal BVA test cases and 3 real-world persona scenarios covering edge cases, failure injection, and CSV quote escaping (100% PASS).
- **Strict Definition of Done & 130h Resource Log:** Audited against all 8 DoD gates, with detailed daily hours logged across Arnav (44.5h), Keshav (42.0h), and Hiranya (43.5h).

---

## 4. Key References & Traceability
- [`D2/rubric-matrix.md`](D2/rubric-matrix.md) — D2 distinction acceptance matrix.
- [`D3/rubric-matrix.md`](D3/rubric-matrix.md) — D3 distinction acceptance matrix.
- [`D4/rubric-matrix.md`](D4/rubric-matrix.md) — D4 distinction acceptance matrix.
- [`D5/rubric-matrix.md`](D5/rubric-matrix.md) — D5 distinction acceptance matrix.
- [`docs/requirements-traceability.md`](docs/requirements-traceability.md) — Requirements to source code traceability.
- [`docs/gitlab-handbook.md`](docs/gitlab-handbook.md) — Git workflow and branching conventions.
