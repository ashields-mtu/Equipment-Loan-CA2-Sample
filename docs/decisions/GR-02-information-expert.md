# GR-02 — Member Eligibility

- **Problem:** Who determines whether a member may borrow?
- **Candidates:** Controller, Member, BorrowingAccount.
- **Decision:** `Member.canBorrow()` delegates account-state interpretation to the member/account model.
- **Principles:** Information Expert, High Cohesion, Encapsulation.
- **Rejected alternative:** Controller comparing raw status strings leaks member state and duplicates domain knowledge.
