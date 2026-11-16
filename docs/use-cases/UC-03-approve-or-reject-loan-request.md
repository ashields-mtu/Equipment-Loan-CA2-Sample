# UC-03 Approve or Reject Loan Request

- **Principal story:** US-03
- **Primary actor:** Loan Coordinator
- **Trigger:** Authorised coordinator submits a decision for a reviewed request.

## Preconditions
- Coordinator is authorised.
- Loan request exists with `SUBMITTED` status.

## Success guarantee — approval
Request status becomes `APPROVED`, a decision is recorded and an `EquipmentReservation` is created for the requested period.

## Success guarantee — rejection
Request status becomes `REJECTED`, the reason and decision are recorded, and no reservation exists.

## Main success scenario
1. Coordinator identifies the request and chooses Approve.
2. System confirms authority and submitted status.
3. System rechecks period availability.
4. System records the approval decision.
5. System creates a reservation.
6. System changes request status to `APPROVED`.
7. System returns the outcome.

## Extensions
- **1a:** Coordinator chooses Reject — record reason, set `REJECTED`, create no reservation.
- **2a:** Coordinator is not authorised — refuse operation.
- **2b:** Request is no longer submitted — return current status.
- **3a:** Quantity is no longer available — keep `SUBMITTED`; return unavailable outcome.
- **4a:** Decision/reservation cannot be stored — preserve previous state and report controlled failure.
