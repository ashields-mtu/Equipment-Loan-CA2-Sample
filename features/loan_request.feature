Feature: Submit a standard equipment-loan request

  Background:
    Given member "M-104" has an active borrowing account
    And 5 projectors are available for the requested period

  Scenario: Active member submits a valid fourteen-day request
    When the member requests 2 projectors for 14 days
    Then the request is accepted
    And the request status is SUBMITTED
    And a unique request reference is returned
    And projector availability is unchanged

  Scenario Outline: Requests outside the duration boundary are refused
    When the member requests 1 projector for <days> days
    Then the request is <outcome>

    Examples:
      | days | outcome  |
      | 0    | refused  |
      | 1    | accepted |
      | 14   | accepted |
      | 15   | refused  |

  Scenario: Inactive member cannot submit
    Given member "M-104" has an inactive borrowing account
    When the member requests 1 projector for 3 days
    Then the request is refused
    And no loan request is stored
    And projector availability is unchanged
