Feature: Login Page

  Scenario Outline:  Login with invalid credentials

    Given the user is on Login Page
    When the user enters "<user name>" and "<password>"
    And the user clicks the login button
    Then the user should be logged in successfully

    Examples:
      | user name | password |
      | april | 123456 |
      | chay  | 345@234|
      | mercator | 34655737|