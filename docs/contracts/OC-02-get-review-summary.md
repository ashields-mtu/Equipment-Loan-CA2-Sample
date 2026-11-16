# OC-02 getLoanRequestReviewSummary

## Signature
`getLoanRequestReviewSummary(coordinatorId, requestReference): ReviewSummaryResult`

## Postconditions — success
- Existing domain state is unchanged.
- A `LoanRequestReviewSummary` is returned containing request details, member eligibility and current availability evidence.

## Controlled failures
Unauthorised coordinator; unknown request; request not in a reviewable state.
