# Reconciliation and Expansion Record

Only changed or disputed CA1 items are recorded here.

| ID | CA1 issue or expansion | Decision | Rationale | Artefacts updated |
|---|---|---|---|---|
| REC-01 | `EquipmentRequest` and `LoanRequest` were both used | Use `LoanRequest` | Align terminology with the approved scenario | Glossary, use cases, models |
| REC-02 | CA1 checked only current stock | Add availability for a requested period | Required by BR-02 | UC-01, SSD-01, OC-01, design |
| REC-03 | Submission reduced available quantity | Remove allocation from submission | Required by BR-06 | UC-01, OC-01, GR-03 |
| REC-04 | New requests were marked Approved | Initial status is `SUBMITTED` | Required by BR-04 | UC-01, contracts, class model |
| REC-05 | Approval authority was not modelled | Add `LoanCoordinator` actor and authorisation rule | Lecturer expansion / BR-07 | UC-03, SSD-03, design |
| REC-06 | Approval did not recheck availability | Recheck and create reservation on approval | Prevent stale availability decisions | UC-03, OC-03, GR-04 |
