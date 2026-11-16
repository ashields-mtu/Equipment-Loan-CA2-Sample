# CA2 Traceability Matrix

| Product Goal | Backlog story | Requirements / rules | Selected use case | Gherkin | SSD | Contract | CRC / decision | Design sequence | Design classes |
|---|---|---|---|---|---|---|---|---|---|
| PG-01 | US-01 | FR-01–03; BR-01–06 | UC-01 | `loan_request.feature` | SSD-01 | OC-01 | Member, LoanRequest; GR-01–04, ADR-05 | DSD-01 | Controller, Member, LoanRequest, AvailabilityPolicy, Generator |
| PG-01 | US-02 | FR-04; BR-02, BR-07 | UC-02 | review examples in dossier | SSD-02 | OC-02 | Coordinator, LoanRequest; GR-01, GR-04 | DSD-02 | Controller, Coordinator, AvailabilityPolicy |
| PG-01 | US-03 | FR-05–06; BR-07–08 | UC-03 | `loan_decision.feature` | SSD-03 | OC-03 | LoanRequest, Decision, Reservation; GR-01, GR-04 | DSD-03 | Controller, LoanDecision, Reservation, LoanRequest |

## Reverse traceability checks
- Each important operation in the class model appears in a CRC responsibility, contract or interaction.
- Each principal sequence message maps to a receiving-class operation.
- Each selected use case links to at least one story and relevant rules.
