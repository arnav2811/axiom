# Footprint Lens — Deliverable D5: Increment 2 (Sprint 2 Delivery)

**Deliverable:** D5 Increment 2 (7% of total assessment)  
**Status:** Distinction-Standard Submission Pack (80+)  
**Authors:** Arnav Mishra, Keshav Singhal, Hiranya Makkar  
**Target Submission Deadline:** 22 February 2027, 16:00  
**Git Release Tag:** `v0.3.0-d5-increment2`  

---

## 1. Executive Summary & Progression from D4 to D5

Deliverable D5 represents the delivery of **Increment 2** (the output of Sprint 2). In accordance with the COMP2300 specification, Increment 2 takes the initial vertical slice established in Deliverable D4 and makes it a **functional masterpiece**, incorporating user and marker feedback, adding scenario comparison modeling, providing tangible domestic water equivalence, implementing reversible action coaching, and demonstrating comprehensive boundary and partition testing.

### Key Additions in Increment 2:
1. **Interactive Scenario Comparison Engine:** Compare any electricity activity against alternative target quantities; calculates exact net carbon differences and savings percentages.
2. **Domestic Water Equivalence Calculator:** Translates abstract litre quantities into standard 20L Indian household buckets (e.g. $40\text{ L} = 2.0\text{ buckets}$).
3. **Reversible Action Planning Coach:** Choose and defer coaching plans without moralising or guilt-tripping; respects protected lifestyle constraints.
4. **Carbon Summary & Audit Export:** One-click formatted carbon accounting summary dialog detailing personal totals, undivided household totals, and CEA factor citations.
5. **Real-Time Category Filter Chips:** High-speed filtering across all 7 categories (`All`, `⚡ Electricity`, `🚗 Travel`, `🥗 Food`, `💧 Water`, `📦 Packaging`, `🗑️ Waste`, `♻️ Repair`).
6. **Boundary & Partition Testing Evidence:** 22 formal boundary value analysis (BVA) test cases and 3 real-world persona scenario walkthroughs with 100% pass rate.
7. **Detailed Agile Management Tracking:** Sprint 2 daily burndown chart (21 pts $\to$ 0 pts), 130-hour task log across all three team members, and an 8-point Definition of Done (DoD) compliance audit.

---

## 2. Directory Contents & Distinction Evidence

| File / Document | Purpose & Rubric Alignment |
|---|---|
| [`report.md`](report.md) | Comprehensive D5 deliverable report covering Design, Implementation, Testing, Planning, and Retrospective. |
| [`boundary-results.md`](boundary-results.md) | Full boundary value analysis (BVA) and equivalence partition test results (22 test cases) and persona scenario walkthroughs. |
| [`tasks-and-hours.md`](tasks-and-hours.md) | Granular daily log recording 130.0 total hours across Arnav (44.5h), Keshav (42.0h), and Hiranya (43.5h). |
| [`definition-of-done.md`](definition-of-done.md) | Formal 8-point Definition of Done (DoD) framework with individual story compliance audit. |
| [`burndown.md`](burndown.md) | Sprint 2 daily burndown chart (21 pts $\to$ 0 pts), retrospective, and Sprint 3 backlog plan. |
| [`rubric-matrix.md`](rubric-matrix.md) | Comprehensive 80+ Distinction acceptance criteria mapping against official D5 rubric descriptors. |
| [`report/main.tex`](report/main.tex) | Formal 12pt A4 LaTeX D5 report featuring native TikZ vector graphics (UML Class, Sequence, Burndown). |

---

## 3. How to Launch and Verify the D5 Increment 2 Application

### Option A: Launch D5 Increment 2 Masterpiece Directly
Double-click **`run-d5.bat`** in the repository root or run:
```powershell
.\run-d5.bat
```
*(Or in PowerShell: `.\run-d5.ps1`)*

### Option B: Interactive Live Tri-Mode Switcher Inside the Running App
Whenever the application is open, click the segmented button in the top-right header:
* Click **`🏛️ D3 Baseline`** to inspect the clean Google Engineering Studio architectural wireframe.
* Click **`🌱 D4 Inc 1`** to view the initial Increment 1 vertical slice.
* Click **`✨ D5 Masterpiece`** to experience the full Increment 2 application with Scenario Comparison and Audit Export.

### Option C: Run Headless Verification Tests
```powershell
# 1. Run headless core smoke suite (10/10 checks PASS)
java -cp "New/application/build/classes;New/application/build/test-classes" in.carbon.core.CoreSmoke

# 2. Run D2 prototype calculation tests (8/8 checks PASS)
node --test New/D2/prototype/prototype-logic.test.mjs
```

---

## 4. Git Release Tags for Marking

* **D3 Baseline Tag:** `git checkout v0.1.0-d3-setup` (Architectural setup and walking skeleton).
* **D4 Increment 1 Tag:** `git checkout v0.2.0-d4-increment1` (Initial vertical slice).
* **D5 Increment 2 Tag:** `git checkout v0.3.0-d5-increment2` (Masterpiece Increment 2).
