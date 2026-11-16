# Agreed Analysis Baseline

## Scope

### In scope
- Submit a standard equipment-loan request.
- Review the details and evidence associated with a request.
- Approve or reject a submitted request.
- Recheck period availability and create a reservation on approval.
- Return clear outcomes and controlled refusal reasons.

### Out of scope
- Equipment collection and return processing.
- Payment, deposits and fines.
- Maintenance and damage assessment.
- Procurement and stock purchasing.

## Stakeholders and actors

| Stakeholder / actor | Interest or goal |
|---|---|
| Member | Submit a valid request and receive a clear result/reference |
| Loan Coordinator | Review and decide requests using current evidence |
| Community Partnership | Apply rules consistently and protect equipment availability |
| Equipment Custodian | Avoid unapproved allocation and conflicting reservations |

## Agreed domain concepts

`Member`, `BorrowingAccount`, `EquipmentType`, `LoanRequest`, `LoanPeriod`, `EquipmentReservation`, `LoanDecision`, `LoanCoordinator`, `RequestReference`.

## Requirement catalogue

| ID | Requirement |
|---|---|
| FR-01 | Record a standard loan request from an active member. |
| FR-02 | Assess quantity availability for the complete requested period. |
| FR-03 | Return a unique reference for a successful submission. |
| FR-04 | Allow an authorised coordinator to review a submitted request. |
| FR-05 | Allow an authorised coordinator to approve or reject a request. |
| FR-06 | Create an equipment reservation only when approval succeeds. |
