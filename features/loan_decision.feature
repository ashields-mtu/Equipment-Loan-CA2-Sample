Feature: Decide a submitted loan request

  Scenario: Authorised coordinator approves an available request
    Given request "LR-2001" has status SUBMITTED
    And the coordinator is authorised
    And the requested quantity remains available for the full period
    When the coordinator approves the request
    Then the request status is APPROVED
    And an equipment reservation is created
    And the approval decision is recorded

  Scenario: Approval is prevented when availability changed
    Given request "LR-2001" has status SUBMITTED
    And the coordinator is authorised
    And the requested quantity is no longer available
    When the coordinator approves the request
    Then the request remains SUBMITTED
    And no equipment reservation is created

  Scenario: Coordinator rejects a request
    Given request "LR-2001" has status SUBMITTED
    And the coordinator is authorised
    When the coordinator rejects the request with reason "Insufficient evidence"
    Then the request status is REJECTED
    And no equipment reservation is created
