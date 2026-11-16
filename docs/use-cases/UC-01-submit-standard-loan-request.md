# UC-01 Submit Standard Loan Request

- **Principal story:** US-01
- **Primary actor:** Member
- **Trigger:** Member decides to request equipment.

## Preconditions
- The equipment catalogue is available.
- The member possesses a member number.

## Success guarantee
A new `LoanRequest` exists with `SUBMITTED` status and a unique reference. Equipment availability is unchanged.

## Minimum guarantee
No successful request is created and no reservation or inventory allocation occurs.

## Main success scenario
1. Member provides member number, equipment type, quantity, collection date and duration.
2. System confirms that the member exists and can borrow.
3. System validates quantity and duration.
4. System confirms quantity availability for the complete period.
5. System creates a submitted loan request with a unique reference.
6. System stores the request.
7. System returns the reference and submitted status.

## Extensions
- **2a:** Member does not exist — refuse with reason.
- **2b:** Borrowing account is inactive — refuse with reason.
- **3a:** Quantity is not positive — refuse with reason.
- **3b:** Duration is outside 1–14 days — refuse with reason.
- **4a:** Quantity is unavailable for any part of the period — refuse with reason.
- **5a:** Unique reference cannot be generated — report controlled failure; create no request.
- **6a:** Request cannot be stored — report controlled failure; availability remains unchanged.
