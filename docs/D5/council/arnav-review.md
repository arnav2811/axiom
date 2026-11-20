# D5 Council Review — Arnav Mishra

**Role:** Research, strategy, editorial
**Deliverable:** D5 — Increment 2

---

## Findings

**A1:** Sprint 2 successfully expanded the core journey to two numeric categories (ELECTRICITY, TRAVEL). The TRAVEL factor extension validates DR-04 — only 2 lines changed in the Activity constructor, confirming the domain model's category-agnostic design.

**A2:** The Definition of Done is properly applied to all Sprint 2 stories. Each story has a completed DoD checklist in the report. This is a significant improvement over D4 where DoD was planned but not formally verified.

**A3:** Boundary testing covers the key numeric boundaries (zero, negative, max, just-above-max). However, the boundary test for Factor value = 0 should also test negative factor values explicitly.

**A4:** The water bucket equivalence (DR-05) is a culturally appropriate design choice for Indian users. It avoids false carbon claims while providing a meaningful comparison. This directly implements D1 research insight about contextual understanding.

**A5:** Sprint 3 must prioritise accessibility (US-13) early. Keyboard navigation and screen reader labels should not be deferred to the last day of the sprint.

## Action Items

| Priority | Action | Owner |
|----------|--------|-------|
| High | Prioritise accessibility in Sprint 3 | Keshav |
| Medium | Add negative factor value boundary test | Arnav |
| Low | Plan user guide structure early | Arnav |

---

*Arnav Mishra — Council Reviewer*
