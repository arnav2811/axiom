> **FICTIONAL RECONSTRUCTION — AI-created illustrative draft. Review and personalise before any formal use. Replace [PLACEHOLDER] tags with genuine personal experiences.**

# Keshav Singhal — D4 Individual Reflection

My Sprint 1 focus was the activity recording form (US-01, US-02) and the LocalStore persistence engine (US-12). The form required careful category-aware validation — dynamically adjusting field labels and enabling/disabling factor inputs based on the selected category. The LocalStore implementation taught me the importance of atomic writes: writing to a temp file and moving atomically prevents data corruption if the application crashes mid-save. [PLACEHOLDER: describe your personal experience with these implementations]

I discovered that JaCoCo 0.8.12 doesn't support Java 25's class file version 69. This initially caused concern, but I confirmed tests still execute correctly — only coverage reporting fails. [PLACEHOLDER: describe how you investigated and resolved this issue]

My council review identified concrete technical issues including the monolithic UI class size (938 lines) and CSV schema versioning needs. Arnav correctly challenged whether UI refactoring was premature for a 2-person team, and I agreed to defer it. This taught me to prioritise user-facing features over architectural elegance when time is constrained. [PLACEHOLDER: add personal reflection on engineering trade-offs]

*196 words*
