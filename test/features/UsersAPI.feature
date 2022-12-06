
Feature: User api test
  Get / create / get by id / update user via API

  Scenario: User API flow
    Given I took auth token
    And I send "POST" api request to create user  #201
    And I send "GETbyID" api request to check if user is created  #200
    And I send "PATCH" api request to update "allUserParameters" to user #200
    And I send "GET" api request to get all users
    And I should "GET" "200" response and validate if my user is in the list
    And I check if all updated parameters are correct
    Then I delete exact user              #this step is questionable




    #subaccount shouldbe checked

  #users account policies

    #  Scenario: User Deletion via ID
     # Given I took auth token
     # And I send "POST" api request to create multiple accounts
    #  And I send "GETbyID" api request to check if account is created  #200
     # Then I delete all accounts via



