# Footprint Lens — Deliverable D5: Increment 2 Report

**Deliverable:** D5 Increment 2 (7% of total assessment)  
**Status:** Distinction-Standard Submission Pack (80+)  
**Authors:** Arnav Mishra, Keshav Singhal, Hiranya Makkar  
**Target Submission Deadline:** 22 February 2027, 16:00  
**Git Release Tag:** `v0.3.0-d5-increment2` (evolving from `v0.1.0-d3-setup` and `v0.2.0-d4-increment1`)  

---

## 1. Executive Summary & Sprint 2 Delivery

Deliverable D5 marks the successful completion of **Sprint 2 (Increment 2)** for **Footprint Lens (Concept A: Contextual Choice Coach)**. Building upon the architectural foundation of D3 and the initial vertical slice delivered in D4, Increment 2 elevates the system into a rich, full-featured desktop application that empowers Indian urban residents to understand, compare, and act upon their daily carbon footprint with mathematical honesty.

### Key Achievements in Increment 2:
1. **Interactive Scenario Comparison Engine:** Enables users to select an electricity activity and model alternative consumption scenarios against verified Central Electricity Authority (CEA) grid factors, displaying exact net savings and percentage reductions.
2. **Domestic Water Equivalence Calculator:** Translates abstract litre quantities into familiar Indian domestic units (standard 20L buckets), establishing tangible cognitive anchors.
3. **Reversible Action Planning Coach:** Implements non-punitive coaching recommendations that respect protected lifestyle constraints (medical equipment, late-night safety commutes) without moralising or guilt-tripping.
4. **Comprehensive Boundary & Partition Testing:** Executed 22 formal boundary value analysis (BVA) test cases and 3 real-world persona scenario walkthroughs with a 100% pass rate.
5. **Rigorous Agile Project Management:** Succeeded in burning down 21 Story Points across 10 working days, logging 130.0 total team hours, and enforcing a strict 8-point Definition of Done.

---

## 2. System Design & Architectural Progression

### Architectural Invariants Maintained:
* **Presentation Tier (`in.carbon.ui`):** Modern JavaFX desktop shell featuring tri-mode live switching (`D3 Baseline`, `D4 Increment 1`, `D5 Masterpiece`), responsive category filter chips, and Google Material You tonal cards.
* **Domain Core Tier (`in.carbon.core`):** Pure Java 21 business logic (`CarbonService`, `Activity`, `Factor`, `Estimate`). 100% headless-testable with zero `javafx.*` imports.
* **Persistence Tier (`in.carbon.core.LocalStore`):** Local RFC 4180 CSV serialization with atomic swap-file replacement (`~/.footprint-lens/records.csv`), guaranteeing zero network transmission and local user privacy.

### The D3 ➔ D4 ➔ D5 Software Evolution Matrix

| Feature Dimension | D3: Technical Baseline (`v0.1.0`) | D4: Increment 1 (`v0.2.0`) | D5: Increment 2 Masterpiece (`v0.3.0`) |
|---|---|---|---|
| **Primary Scope** | Architectural proof-of-concept, walking skeleton, headless tests. | Initial vertical slice implementing Sprint 1 stories (`D2-US01`–`D2-US07`). | Advanced Scenario Comparison, Water Equivalence, Reversible Action Coach, Audit Summary Export. |
| **Visual Aesthetics** | Minimalist Google Engineering Studio blueprint (clean slate, monospace tags). | Google Material You tonal cards (`#E6F4EA`, `#E8F0FE`), category chips, gold badges. | Masterpiece executive theme with tri-mode switcher, scenario comparison dialog, and audit summary. |
| **Scenario Modeling** | Static calculation only ($Qty \times Rate$). | Baseline provenance inspection drawer. | Interactive scenario modeling with dynamic savings calculation and percentage delta. |
| **Resource Tangibility** | Raw volumetric units (`L`, `kWh`). | Category-specific units and placeholders. | Indian domestic equivalence translation (e.g. $40\text{ L} = 2.0\text{ buckets}$). |
| **Testing Coverage** | 10 headless smoke checks. | Smoke tests + input field validation. | 22 formal BVA partitions + 3 persona scenario walkthroughs (100% PASS). |
| **Project Planning** | 4-sprint roadmap & 21-pt Sprint 1 backlog. | Sprint 1 burndown chart (21 pts $\to$ 0 pts). | Sprint 2 burndown (21 pts $\to$ 0 pts), 130h task log, 8-point DoD audit, Sprint 3 plan. |

---

## 3. Implemented Sprint 2 User Stories & Acceptance Evidence

During Sprint 2, the team delivered all 6 committed user stories totaling **21 Story Points**:

| Story ID | Epic | User Story Summary | Pts | Assignee | Implementation Evidence |
|---|---|---|:---:|---|---|
| **S2-01** | E1: Compare | **Interactive Scenario Comparison Engine:** Compare electricity activities against alternative targets. | 3 | Arnav | `CarbonService.compare()` calculates exact `BigDecimal` difference; interactive dialog displays savings summary. |
| **S2-02** | E2: Tangibility | **Domestic Water Equivalence Calculator:** Convert water litres into familiar 20L Indian household buckets. | 4 | Arnav | `CarbonService.waterBuckets()` formats fractional bucket tags in ListView and Inspector. |
| **S2-03** | E3: Coach | **Reversible Action Planning Coach:** Choose and defer coaching recommendations with feedback. | 3 | Hiranya | `workspace.choose()` and `dismiss()` update action state without data loss; protected choices suppress advice. |
| **S2-04** | E4: Audit | **Carbon Summary & Audit Export:** Formatted textual summary of personal/household totals and CEA factors. | 3 | Hiranya | One-click `📑 Export Audit Summary` button renders complete audit preview dialog. |
| **S2-05** | E5: UX | **Real-Time Category Filter Chips:** High-speed filtering across all 7 activity categories in overview list. | 3 | Hiranya | Pill chips bar (`All`, `⚡ Electricity`, `🚗 Travel`, `🥗 Food`, etc.) filters records dynamically on click. |
| **S2-06** | E6: QA | **Equivalence Partition & BVA Suite:** 22 boundary test cases covering edge and failure paths. | 5 | Keshav | Documented in `boundary-results.md`; failure injection tests verify CSV resilience. |

**Total Sprint 2 Velocity: 21 Story Points (100% Done)**

---

## 4. Comprehensive Testing & Boundary Verification

Testing in D5 adheres to rigorous software engineering best practices:
1. **Boundary Value Analysis (BVA):** Evaluated quantity limits (blank, non-numeric, negative $-0.01$, zero $0.00$, normal $120.50$, max $1,000,000.00$, overflow $1,000,000.01$).
2. **Epistemic Honesty Verification:** Validated that unverified categories (packaging, repair/reuse) return `Estimate.unavailable()` and are **never coerced to 0.0**.
3. **ISO 14064-1 Scope Partitioning:** Verified that personal direct consumption and household collective consumption are tracked in independent metric partitions.
4. **CSV Resilience & Failure Injection:** Validated that commas and quotes in user notes are safely escaped, and corrupted CSV lines abort cleanly without data loss.

Full test matrices and output logs are available in [`boundary-results.md`](boundary-results.md).

---

## 5. Agile Project Management & Team Resource Log

* **Sprint 2 Burndown:** 21 Story Points burned down to 0 points across 10 working days, following an ideal linear trajectory ($2.1\text{ pts/day}$).
* **Definition of Done (DoD):** Every user story was audited against all 8 gates (Acceptance Criteria, Automated Tests, Architecture, Privacy, Peer Review, Traceability, Accessibility, and Release Tagging).
* **Team Hours Summary:** The team logged **130.0 total hours** across Sprint 2:
  * **Arnav Mishra:** 44.5 hours (Architecture, math engine, scenario comparison, LaTeX reporting)
  * **Keshav Singhal:** 42.0 hours (BVA test matrices, persistence resilience, build scripts, DoD audit)
  * **Hiranya Makkar:** 43.5 hours (UI implementation, category filter chips, water equivalence, accessibility)

Full tracking charts and daily hours logs are available in [`burndown.md`](burndown.md) and [`tasks-and-hours.md`](tasks-and-hours.md).

---

## 6. How to Run and Verify Deliverable D5

### Standalone Execution:
From the workspace root directory (`c:\Users\arnav\Downloads\COMP2300`):
```powershell
# 1. Run D5 Increment 2 Masterpiece
.\run-d5.bat

# 2. Run Headless Domain Smoke Tests (10/10 PASS)
java -cp "New/application/build/classes;New/application/build/test-classes" in.carbon.core.CoreSmoke

# 3. Run D2 Prototype Tests (8/8 PASS)
node --test New/D2/prototype/prototype-logic.test.mjs
```

### Git Verification:
* **Release Tag:** `v0.3.0-d5-increment2`
* **Remote Repository:** `https://github.com/arnav2811/comp2300.git`
