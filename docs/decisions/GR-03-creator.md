# GR-03 — LoanRequest Creation

- **Problem:** How is a valid submitted request created?
- **Decision:** `LoanRequest.submit(...)` is a named factory that creates a complete object in `SUBMITTED` state.
- **Principles:** Creator, Information Expert, Protected Variations.
- **Rejected alternative:** Empty construction followed by setters permits incomplete and invalid intermediate state.
- **Consequence:** The factory validates local invariants; repository and availability concerns remain external.
