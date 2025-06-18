Feature: Background Feature

  Background:
    Given the user is on Login Page

  Scenario: Successful login with valid credentials

    When the user enters valid user name and password
    And the user clicks the login button
    Then the user should be logged in successfully

  Scenario: Unsuccessful login with invalid credentials

    When the user enters invalid user name and password
    And the user clicks the login button
    Then the user should not be logged in successfully
