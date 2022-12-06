
Feature: Policies api test
  Get / create / get by id / update policies via API

  Scenario: Policies API flow
    Given I took auth token
    And I send "POST" api request to create policy  #201
    |AccountName|AccountID|InheritToSubAccount|
    |FirstAcc   | 1       |     False         |
    And I send "GETbyID" api request to check if user is created correctly #200
    And I send "PATCH" api request to update "allPolicyParameters" to policy #200
    |InheritToSubAccount|
    |     True          |
    And I send "GET" api request to get all policies
    And I should "GET" "200" response and validate if my policies is in the list
    And I check if all updated parameters are correct
    Then I delete exact policy


Given I took auth token
    And I send "POST" api request to create policy  #201
    |Roles |Scope | Allow |
    |test  | test | True  |
    And I send "GETbyID" api request to check if policy is created correctly  #200
    And I send "GET" api request to get all policies
    And I check if all updated parameters are correct
     |Roles |Scope | Allow |
     |test2 | test3 | False  |
    Then I delete exact policy


  Given I took auth token
    And I send "POST" api request to create policy  #201
    |AccountName|AccountID| InheritToSubAccount |
    |FirstAcc2  | 2       | True                |
    And I send "GETbyID" api request to check if policy is created correctly  #200
    And I send "GET" api request to get all policies
    And I should "GET" "200" response and validate if my policy is in the list
    And I check if all updated parameters are correct
    Then I delete exact policy

    #maybe we need to check in another scenario if policy works for sub acc-s

 
