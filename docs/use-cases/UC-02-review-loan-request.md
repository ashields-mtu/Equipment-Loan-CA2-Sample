# UC-02 Review Loan Request

- **Principal story:** US-02
- **Primary actor:** Loan Coordinator
- **Trigger:** Coordinator selects a submitted request for review.

## Preconditions
- Coordinator is authenticated.
- Request exists.

## Success guarantee
The coordinator receives current request details, member eligibility, requested period and current period-availability evidence.

## Main success scenario
1. Coordinator identifies a submitted request.
2. System confirms review authority.
3. System retrieves the request and member summary.
4. System evaluates current availability for the requested period.
5. System returns a review summary.

## Extensions
- **2a:** Coordinator lacks authority — refuse access.
- **3a:** Request does not exist — report not found.
- **3b:** Request is not `SUBMITTED` — return current status and prevent decision flow.
