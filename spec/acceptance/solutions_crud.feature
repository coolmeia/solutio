Feature: CRUD of solutions
  Scenario: create a solution
    Given I'm logged in
    When I go to the solutions page
    And I go to the new solution page
    And I fill the form
    Then it should be saved properly

  Scenario: edit a solution
    Given I'm logged in
    Given I have a solution
    When I edit the solution
    Then it should be updated properly

  Scenario: can not edit a solution that is not mine
    Given I'm logged in
    Given Another user has a solution
    Then I can't edit that solution

  Scenario: can not create a solution
    Given I'm not logged in
    Given Another user has a solution
    When I go to the solutions page
    Then I see the solutions
    And but I don't see any new solution link

  Scenario: can not edit a solution
    Given I'm not logged in
    Given Another user has a solution
    Then I can't edit that solution
