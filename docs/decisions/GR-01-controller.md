# GR-01 — Use-case Controller

- **Problem:** Who receives the system operations for submission, review and decision?
- **Candidates:** Member, LoanRequest, LoanRequestController.
- **Decision:** Use `LoanRequestController` as a use-case controller.
- **Principle:** GRASP Controller.
- **Rationale:** It represents the loan-request workflow and coordinates collaborators without owning borrowing or availability rules.
- **Rejected alternative:** `LoanRequest` cannot receive submission before it exists and should not resolve repositories.
- **Consequence:** Controller bloat must be checked during review; domain decisions remain delegated.
