# Design Structure and Shared Interfaces

## Logical layers
- **UI:** accepts external input and presents result types.
- **Application:** use-case controllers and result construction.
- **Domain:** entities, value objects, policies and state transitions.
- **Ports:** repository and generator abstractions.

## Result conventions
All system operations return a typed result rather than throwing business-rule exceptions to the UI.

| Result type | Outcomes |
|---|---|
| `SubmitLoanRequestResult` | Accepted(reference, status), Refused(reason), Failed(reason) |
| `ReviewSummaryResult` | Available(summary), Unavailable(reason) |
| `LoanDecisionResult` | Approved(...), Rejected(...), Refused(reason), Failed(reason) |

## Error convention
- Business refusal: expected rule outcome, no partial state.
- Not found / unauthorised: controlled result.
- Technical persistence failure: `Failed`, with transaction rollback expected.

## Persistence boundary
Repositories are ports. The design does not prescribe SQL, ORM or document storage in CA2.
