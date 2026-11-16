# Community Equipment Loan Service — CA2 Sample Repository

This repository is a **worked teaching example** showing how the required CA2 artefacts can be organised and linked. It models an approved scenario in which registered community members submit requests to borrow equipment.

> This is not a complete solution for a student assignment. Students should follow the structure and traceability method, but must produce their own analysis, responsibility decisions and design.

## Product Goal

Provide community members with a consistent way to request equipment while ensuring that borrowing eligibility, period availability and request-state rules are applied transparently.

## Selected CA2 use cases

| Use case | Principal backlog story | Design status |
|---|---|---|
| [UC-01 Submit Standard Loan Request](docs/use-cases/UC-01-submit-standard-loan-request.md) | US-01 | Complete |
| [UC-02 Review Loan Request](docs/use-cases/UC-02-review-loan-request.md) | US-02 | Complete |
| [UC-03 Approve or Reject Loan Request](docs/use-cases/UC-03-approve-or-reject-loan-request.md) | US-03 | Complete |

## Repository map

| Location | Purpose |
|---|---|
| `docs/baseline/` | Scenario selection, agreed baseline and reconciliation |
| `docs/backlog/` | Product Goal, ordered backlog and selected design scope |
| `docs/use-cases/` | Detailed selected use cases |
| `features/` | Gherkin examples and boundaries |
| `models/ssd/` | Black-box system sequence diagrams |
| `docs/contracts/` | Operation contracts |
| `docs/crc/` | CRC responsibility cards |
| `docs/decisions/` | GRASP and other design decisions |
| `models/interactions/` | Internal object-interaction sequence diagrams |
| `models/design/` | Integrated design class model |
| `models/architecture/` | Package/layer view |
| `docs/architecture/` | Shared interfaces, result types and conventions |
| `docs/traceability.md` | End-to-end traceability matrix |
| `docs/reflection/` | Design evaluation, process and AI evidence |
| `portfolio/` | Guidance for the final group dossier |

## Design chain

```text
Product Goal
→ Product Backlog user story
→ requirements and business rules
→ detailed use case and Gherkin
→ system sequence diagram
→ operation contract
→ CRC and GRASP decisions
→ object-interaction sequence diagram
→ integrated design class diagram
```

## Business rules

- **BR-01:** Only a registered member with an active borrowing account may submit a request.
- **BR-02:** The requested quantity must be available for the complete requested period.
- **BR-03:** Standard-loan duration is 1–14 days inclusive.
- **BR-04:** A new request starts with `SUBMITTED` status.
- **BR-05:** Every successful request receives a unique reference.
- **BR-06:** Submitting a request does not reserve or issue physical equipment.
- **BR-07:** Only an authorised coordinator may approve or reject a submitted request.
- **BR-08:** Approval must recheck availability before creating a reservation.

## Final submission convention

The assessed repository state would be tagged:

```bash
git tag -a ca2-submission -m "Final CA2 design submission"
git push origin ca2-submission
```
