# GR-04 — Period Availability Policy

- **Problem:** Availability depends on requested quantity, period and existing reservations.
- **Candidates:** EquipmentType, LoanRequestController, AvailabilityPolicy.
- **Decision:** Use `AvailabilityPolicy` to evaluate period availability using reservation data.
- **Principles:** Pure Fabrication, Low Coupling, High Cohesion.
- **Rejected alternative:** A current-stock method on `EquipmentType` lacks scheduled-reservation information.
