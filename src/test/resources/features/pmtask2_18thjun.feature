Feature: Login Functionality

  Scenario Outline: Invalid login attempts
    Given the user is on the login page
    When the user enters "<username>" and "<password>"
    Then the system should display a login error message

    Examples:
      | username   | password   |
      | invalid1   | wrongPass  |
      | validUser  | wrongPass  |
      | invalid2   | correctPass|