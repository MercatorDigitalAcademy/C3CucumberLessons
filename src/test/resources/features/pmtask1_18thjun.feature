Feature: User Registration

  Scenario: Successful user registration
    Given the user is on the registration page
    When the user enters the following details:
      | name      | email             | password  |
      | Alice Lee | alice@example.com | pass1234  |
    And submits the registration form
    Then a confirmation message "Registration successful" should be displayed
    And a confirmation email should be sent to "alice@example.com"
