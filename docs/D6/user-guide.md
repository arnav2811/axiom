# Footprint Lens — User Guide

**Version:** 1.0.0
**Authors:** Arnav Mishra, Keshav Singhal
**Last Updated:** Sprint 3

---

## 1. Introduction

**Footprint Lens: Contextual Choice Coach** is a desktop application that helps Indian households understand and reduce their carbon footprint. It calculates CO₂-equivalent emissions from daily activities across seven categories, provides India-specific emission factors from verified sources, and offers actionable reduction advice that respects your lifestyle choices.

### Who Is This For?

Footprint Lens is designed for Indian households who want to:
- Track their carbon emissions from electricity, travel, water, food, packaging, waste, and repair/reuse activities
- Understand which activities contribute most to their carbon footprint
- Receive practical, culturally appropriate reduction advice
- Export their data for personal records or sharing

---

## 2. Installation

### Prerequisites
- **Java 21** or later (download from [Adoptium](https://adoptium.net/))
- **Operating System:** Windows, macOS, or Linux

### Option A: Run from Source

```bash
# Clone the repository
git clone https://github.com/arnav2811/axiom.git
cd axiom/New/application

# Build and run
mvn clean javafx:run
```

### Option B: Run Pre-built JAR

```bash
java --module-path /path/to/javafx-sdk/lib \
     --add-modules javafx.controls,javafx.fxml \
     -jar footprint-lens.jar
```

### Verifying Installation

When Footprint Lens launches successfully, you'll see the main window with:
- A category selector at the top
- An input form for recording activities
- A table of recorded emissions
- Navigation tabs for Dashboard, Coaching, and Factor Editor

---

## 3. Getting Started — Your First Record

1. **Select a category** from the dropdown (e.g., ELECTRICITY)
2. **Enter a description** (e.g., "Monthly electricity bill")
3. **Enter the quantity** (e.g., 150 for 150 kWh)
4. **Select an emission factor** from the available options (factors are pre-loaded with India-specific data)
5. **Choose scope:** Individual or Household
6. **Click Save** — your emission estimate appears in the table below

> **Tip:** The emission factor badge (VERIFIED ✓, ILLUSTRATIVE ~, USER_SUPPLIED ★) tells you the confidence level of the factor's source data.

---

## 4. Recording Emissions

### 4.1 Supported Categories

| Category | Example Activities | Unit |
|----------|-------------------|------|
| **ELECTRICITY** | Monthly bill, appliance usage | kWh |
| **TRAVEL** | Car commute, train journey, flight | km |
| **WATER** | Daily consumption, bore well | litres |
| **FOOD** | Meal preparation, groceries | kg |
| **PACKAGING** | Plastic use, cardboard boxes | kg |
| **WASTE** | Household waste, e-waste | kg |
| **REPAIR_REUSE** | Repaired items (reduces footprint) | items |

### 4.2 Input Validation

Footprint Lens validates your inputs:
- **Quantity** must be a positive number (0 and negative values are rejected)
- **Maximum quantity** is 999,999 units per record
- **Description** cannot be empty
- An **emission factor** must be selected

If validation fails, a clear error message appears below the form.

### 4.3 Editing a Record

1. **Click on a record** in the emissions table
2. The form pre-fills with the record's current values
3. **Modify** any field
4. **Click Save** to update the record

### 4.4 Deleting a Record

1. **Click on a record** in the emissions table
2. **Click Delete** — a confirmation dialog appears
3. **Confirm** to permanently remove the record

---

## 5. Dashboard

The Dashboard tab provides a visual overview of your emissions:

- **Bar Chart:** Shows total kgCO₂e by category. The tallest bar indicates your highest-emission category.
- **Summary Panel:** Displays:
  - Total emissions (kgCO₂e)
  - Household total (undivided)
  - Individual total
  - Number of recorded activities

The dashboard updates automatically when you add, edit, or delete a record.

---

## 6. Action Coaching

The Coaching tab provides **personalised reduction advice** based on your recorded activities:

- Advice is **category-specific** — suggestions match your actual emission patterns
- Advice **respects your lifestyle** — protected activities (cultural, religious, medical) are never penalised
- Advice is **actionable** — each suggestion includes a specific behaviour change and estimated savings

> **Important:** Footprint Lens will never suggest you stop activities that are part of your cultural identity, religious practice, or medical necessity. This is built into the coaching algorithm (Design Principle DP2: Constraint-Aware Protection).

---

## 7. Factor Editor

The Factor Editor (accessible from Tools menu) lets you create custom emission factors:

1. **Open Factor Editor** from the Tools menu
2. **Click New Factor**
3. **Fill in:**
   - **Name:** Descriptive name (e.g., "LPG cooking gas")
   - **Category:** Select from the 7 categories
   - **Value:** Emission factor in kgCO₂e per unit
   - **Unit:** Unit of measurement
   - **Source:** Where the factor data comes from
4. **Click Save** — the factor is now available in the recording form with a USER_SUPPLIED ★ badge

Custom factors are stored locally and persist across sessions.

---

## 8. Exporting Data

To export your emission records:

1. Go to **File → Export CSV**
2. **Choose a save location** using the file dialog
3. The exported CSV file contains all your recorded activities with headers:
   - Description, Category, Quantity, Unit, Factor Name, Factor Value, kgCO₂e, Scope, Date

The CSV file is RFC 4180 compliant and can be opened in any spreadsheet application (Excel, Google Sheets, LibreOffice Calc).

---

## 9. Data Storage

Your data is stored locally at:

| OS | Location |
|----|----------|
| Windows | `%USERPROFILE%\.footprint-lens\records.csv` |
| macOS/Linux | `~/.footprint-lens/records.csv` |

- Data **never leaves your device** — no cloud, no analytics, no tracking
- You can **back up** your data by copying the `records.csv` file
- **Deleting** the file resets the application to a clean state

---

## 10. Troubleshooting

### Application won't start

| Problem | Solution |
|---------|----------|
| "Java not found" | Install Java 21+ from [Adoptium](https://adoptium.net/) |
| "JavaFX modules not found" | Ensure OpenJFX 23 is on the module path |
| Blank window | Check that your display driver supports JavaFX rendering |

### Data issues

| Problem | Solution |
|---------|----------|
| Records not saving | Check write permissions for `~/.footprint-lens/` directory |
| CSV file corrupted | Delete `records.csv` and restart (data will be lost) |
| Export fails | Ensure the target directory exists and is writable |

### Common questions

**Q: Can I use Footprint Lens offline?**
A: Yes — the application runs entirely offline. No internet connection is needed.

**Q: Are the emission factors accurate?**
A: VERIFIED factors are sourced from TERI and BEE (Government of India). ILLUSTRATIVE factors are reasonable estimates. Always check the factor badge.

**Q: Can multiple people share one installation?**
A: Currently, all data is stored in one file. For multi-user tracking, use the Scope (Individual/Household) field to distinguish activities.

---

## 11. Keyboard Shortcuts

| Key | Action |
|-----|--------|
| Tab | Navigate between form fields |
| Enter | Save current record |
| Escape | Clear form / cancel edit |
| Ctrl+E | Export CSV |
| Ctrl+D | Switch to Dashboard |

---

*Footprint Lens is a COMP2300 course project. Emission factors are for educational purposes and may not reflect current values. Always verify with official sources for decision-making.*
