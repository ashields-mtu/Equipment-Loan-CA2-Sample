# Ordered Product Backlog

User stories express stakeholder value. Analysis/design tasks support stories but are not user stories.

| Order | ID | Type | Title | Priority | Status | Related use case |
|---:|---|---|---|---|---|---|
| 1 | US-01 | User story | Submit a standard loan request | Must | Done | UC-01 |
| 2 | US-02 | User story | Review a submitted loan request | Must | Done | UC-02 |
| 3 | US-03 | User story | Approve or reject a request | Must | Done | UC-03 |
| 4 | US-04 | User story | Issue approved equipment | Should | Backlog | UC-04, not selected |
| 5 | US-05 | User story | Record equipment return | Should | Backlog | UC-05, not selected |
| 6 | RISK-01 | Risk | Clarify concurrent reference generation | Must | Done | ADR-05 |
| 7 | DEF-01 | Defect | Submission incorrectly changed stock | Must | Done | REC-03 |
| 8 | TASK-01 | Design task | Produce SSD and contract for UC-01 | Must | Done | UC-01 |
| 9 | TASK-02 | Design task | Complete CRC and GRASP review | Must | Done | All selected |
| 10 | TASK-03 | Design task | Reconcile integrated class model | Must | Done | All selected |

## US-01 Submit a standard loan request

**As an active member, I want to request a quantity of equipment for a specified period so that I can obtain equipment for a community activity.**

Acceptance criteria:
1. Member exists and account is active.
2. Quantity is greater than zero.
3. Duration is 1–14 days inclusive.
4. Quantity is available for the full period.
5. Request is created with `SUBMITTED` status.
6. A unique reference is returned.
7. Submission does not reserve or issue equipment.

## US-02 Review a submitted loan request

**As a loan coordinator, I want to review a submitted request and relevant availability evidence so that I can make an informed decision.**

## US-03 Approve or reject a request

**As an authorised loan coordinator, I want to approve or reject a submitted request so that lending decisions are controlled and recorded.**
