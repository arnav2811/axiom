# D5 Individual Reflection — Keshav Singhal

> **Note:** This reflection draft contains [PLACEHOLDER] tags where genuine personal experience should be inserted before submission. Maximum 200 words.

---

D5 was where testing became central to my workflow. Extending the `Activity` constructor to accept TRAVEL factors was a small code change but required six new boundary tests to validate properly. Writing tests for zero, negative, and max-value inputs revealed that our `BigDecimal` arithmetic could silently lose precision at extreme scales. [PLACEHOLDER: Describe the specific bug or edge case you discovered and how you fixed it.]

The boundary/partition testing approach gave me a systematic framework I hadn't used before — equivalence partitioning divides the input space into classes, and boundary value analysis targets the edges. [PLACEHOLDER: Reflect on how this changed your approach to testing compared to earlier sprints.]

Collaborating with Arnav was smoother this sprint because we explicitly divided ownership at the planning meeting. [PLACEHOLDER: Describe a specific interaction where clear task ownership helped avoid conflicts or confusion.] The factor badge feature (US-04) was satisfying to implement because it makes provenance visible to users — connecting to our DP1 Transparent Provenance design principle.

For Sprint 3, I plan to [PLACEHOLDER: State a specific improvement you will make to your engineering practice] and take ownership of the record editing feature.
