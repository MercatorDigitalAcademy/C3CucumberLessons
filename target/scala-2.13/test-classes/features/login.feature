Feature: Login Page

  @Smoke
  Scenario: Successful login with valid credentials

    Given the user is on Login Page
    When the user enters valid user name and password
    And the user clicks the login button
    Then the user should be logged in successfully