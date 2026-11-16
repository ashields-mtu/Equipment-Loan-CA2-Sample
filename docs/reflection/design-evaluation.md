# Design Evaluation and Reflection

## Cohesion
Eligibility belongs with `Member`; request state transitions belong with `LoanRequest`; period availability belongs with `AvailabilityPolicy`. The controller coordinates rather than reproducing these rules.

## Coupling
The controller depends on repository and generator interfaces rather than storage or numbering implementations. The cost is additional indirection, but these dependencies represent credible variation points.

## Controller review
`LoanRequestController` handles three related use cases and could grow. If issue/return behaviour were added, a separate equipment-issue controller would be considered rather than expanding it indefinitely.

## Object validity
`LoanRequest.submit(...)` prevents an empty, partially configured request and guarantees `SUBMITTED` initial state.

## Important rejected alternatives
- Repository count for references: rejected because uniqueness is not established under deletion/concurrency.
- Current-stock calculation for future availability: rejected because it cannot represent overlapping periods.
- Reserving equipment at submission: rejected because BR-06 distinguishes request from approved reservation.

## Assumptions and limitations
- The exact atomic reference implementation is deferred.
- Transaction infrastructure is not specified, but decision and reservation persistence must be atomic.
- Issue and return use cases remain outside selected design scope.
