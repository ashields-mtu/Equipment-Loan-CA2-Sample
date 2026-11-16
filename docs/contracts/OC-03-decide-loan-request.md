# OC-03 decideLoanRequest

## Signature
`decideLoanRequest(coordinatorId, requestReference, decision, reason): LoanDecisionResult`

## Postconditions — approve
1. A `LoanDecision` exists and identifies coordinator, outcome and timestamp.
2. An `EquipmentReservation` exists for the equipment type, quantity and period.
3. Reservation is associated with the request.
4. Request status becomes `APPROVED`.

## Postconditions — reject
1. A `LoanDecision` exists with rejection reason.
2. Request status becomes `REJECTED`.
3. No reservation is created.

## Controlled failures
Unauthorised coordinator; unknown request; request not submitted; changed availability; persistence failure.
