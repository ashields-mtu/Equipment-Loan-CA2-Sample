# Scenario Selection and Approval

## Candidate comparison

| Candidate scenario | Manageable scope | Behavioural richness | OO design potential | Suitable interactions | Decision |
|---|---|---|---|---|---|
| Community Equipment Loan Service | Yes — request, review, approval and issue are separable | Strong rules and alternatives | Strong domain objects and responsibility choices | Supports state-changing use cases | **Selected** |
| Community Newsletter Service | Yes | Limited state change | Low for this CA | Mostly CRUD and publishing | Rejected |
| Community Event Directory | Yes | Moderate | Moderate | Limited controlled business rules | Rejected |

## Selection rationale

The equipment-loan scenario provides controlled state transitions, eligibility rules, period availability, request approval and physical-resource constraints. These support SSDs, operation contracts, CRC analysis, GRASP decisions and substantial object interaction.

## Lecturer approval

- **Selected scenario:** Community Equipment Loan Service
- **Approval status:** Approved for classroom example
- **Expansion applied:** Add period-based availability, explicit approval authority and reservation creation only after approval.
