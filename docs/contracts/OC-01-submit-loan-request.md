# OC-01 submitLoanRequest

## Signature
`submitLoanRequest(memberNumber, typeCode, quantity, collectionDate, durationDays): SubmitLoanRequestResult`

## References
US-01, UC-01, FR-01–03, BR-01–06, SSD-01.

## Preconditions
- Catalogue services are available.
- No successful request has yet been created for this invocation.

## Postconditions — success
1. A new `LoanRequest` exists.
2. A unique `RequestReference` is assigned.
3. The request is associated with the identified `Member` and `EquipmentType`.
4. A `LoanPeriod` records collection date and duration.
5. Quantity is recorded and is positive.
6. Status is `SUBMITTED`.
7. The request is stored.
8. No `EquipmentReservation` is created.
9. Equipment availability is unchanged.

## Controlled failures
Missing member; inactive account; invalid quantity; invalid duration; unavailable period quantity; reference-generation failure; persistence failure.
