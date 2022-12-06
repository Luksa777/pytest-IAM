# Created by User at 12/1/2022
Feature: sample api test
  just test

  Scenario: Api test request
    Given I took auth token
    And I send api request
    Then I should get "200" response