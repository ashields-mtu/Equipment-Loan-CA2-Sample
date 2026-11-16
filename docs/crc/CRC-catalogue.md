# CRC / Responsibility Catalogue

## LoanRequestController
**Knowing:** no persistent domain state.  
**Doing:** receive system events; coordinate selected use cases; translate domain outcomes to result types.  
**Collaborators:** MemberRepository, LoanRequestRepository, AvailabilityPolicy, RequestReferenceGenerator, LoanRequest.

## Member
**Knowing:** member number; borrowing account status.  
**Doing:** determine borrowing eligibility.  
**Collaborators:** BorrowingAccount, LoanRequest.

## LoanRequest
**Knowing:** reference; member; equipment type; quantity; loan period; status; decision/reservation associations.  
**Doing:** protect valid creation; determine whether a decision may be applied; apply approved/rejected transition.  
**Collaborators:** Member, EquipmentType, LoanPeriod, LoanDecision, EquipmentReservation.

## AvailabilityPolicy
**Knowing:** no long-lived state.  
**Doing:** determine available quantity for an equipment type across a period using existing reservations.  
**Collaborators:** EquipmentType, EquipmentReservationRepository, LoanPeriod.

## RequestReferenceGenerator
**Doing:** generate a unique request reference without depending on repository count.  
**Collaborators:** SequenceSource or UUID provider.

## LoanCoordinator
**Knowing:** coordinator identity and authority.  
**Doing:** determine whether the coordinator may review/decide requests.  
**Collaborators:** LoanRequestController, LoanDecision.

## EquipmentReservation
**Knowing:** equipment type, quantity, period and reservation status.  
**Doing:** represent approved capacity commitment.  
**Collaborators:** EquipmentType, LoanPeriod, LoanRequest.
