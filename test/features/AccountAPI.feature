
Feature: Account api test
  Get / create / get by id / update account via API

  Scenario: Account API flow
    Given I took auth token
    And I send "POST" api request to create account  #201
    And I send "GETbyID" api request to check if account is created  #200
    And I send "PATCH" api request to update "allacountparameters" account #200
    And I send "GET" api request to get all accounts
    And I should "GET"" "200" response and validate if my account is in the list
    And I check if all updated parameters are correct
    Then I delete exact account


  Scenario: Sub-Account API flow
    Given I took auth token
    And I send "POST" api request to create sub-account  #201
    And I send "GETbyID" api request to check if sub-account is created  #200
    And I send "PATCH" api request to update "allacountparameters" sub-account #200
    And I send "GET" api request to get all accounts
    And I check if all updated parameters are correct
    Then I delete exact account


    Scenario: Account Deletion via ID
      Given I took auth token
      And I send "POST" api request to create account    #201
      And I send "GETbyID" api request to check if account is created  #200
      Then I delete exact account via "ID"


      Scenario: Account Deletion via ID
      Given I took auth token
      And I send "POST" api request to create account    #200
      And I send "GETbyID" api request to check if account is created  #200
      Then I delete exact account via "NAME"



         Scenario: Account Deletion via ID
      Given I took auth token
      And I send "POST" api requests to create multiple accounts
      And I send "GETbyID" api request to check if account is created  #200
      Then I delete all accounts via