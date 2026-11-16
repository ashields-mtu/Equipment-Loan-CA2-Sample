# Selected CA2 Design Scope

The use cases, rather than the stories, define the detailed CA2 design scope.

| Selected use case | Supporting stories | Business value | Requirements / rules | Reason selected |
|---|---|---|---|---|
| UC-01 Submit Standard Loan Request | US-01 | Creates a controlled request without allocating equipment | FR-01–03, BR-01–06 | Rich validation, creation and refusal behaviour |
| UC-02 Review Loan Request | US-02 | Presents reliable evidence for a decision | FR-04, BR-02, BR-07 | Demonstrates query coordination and result construction |
| UC-03 Approve or Reject Loan Request | US-03 | Controls state transition and reservation | FR-05–06, BR-07–08 | Strong state change, authority and alternative behaviour |

## Excluded from detailed CA2 design

`UC-04 Issue Equipment` and `UC-05 Record Equipment Return` remain in the backlog but are not developed into complete CA2 interactions.
