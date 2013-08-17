Feature: User login
  Background:
    Given I'm in the root page

  Scenario: Visitor creates a new user
    When I create a new user
    Then the user should be created successfully

  Scenario: User sign in
    Given I have a user
    When I sign in
    Then I should be signed in

  Scenario: User sign out
    Given I'm logged in
    When I sign out
    Then I should be signed out
