
from pytest_bdd import scenario, given, when, then
import requests
import json

AccountGetPost = "https://nextgenkube.ai-logix.net/authv2/api/v2/Accounts" # get or create  account
getAccountByIdOrUpdate = "https://nextgenkube.ai-logix.net/authv2/api/v2/Accounts/1" #get account by id / update account by id
Token1 = "https://nextgenkube.ai-logix.net/authv2/api/v2/Token/Token"



@scenario('../features/AccountAPI.feature','Account API flow')
def test_add():
    pass

@given("I took auth token")


def step_impl():
    apiurl = "ttps://nextgenkube.ai-logix.net/authv2/api/v2/Accounts"
    response = requests.post(apiurl)
    j = str(response.json())
    j = j.replace("'", '"')
    x = json.loads(j)

    print(x)



@given('I send "POST" api request to create account  #201')
def step_impl():
    apiurl = AccountGetPost
    response = requests.get(apiurl)
    j = str(response.json())
    x = json.loads(j)
    print(x)




@given('I send "GETbyID" api request to check if account is created  #200')
def step_impl():
    apiurl = AccountGetPost
    response = requests.get(apiurl)
    j = str(response.json())
    x = json.loads(j)
    print(x)


@given('I send "PATCH" api request to update "accName" account #200')
def step_impl():
    raise NotImplementedError(u'STEP: And I send "PATCH" api request to update "accName" account #200')


@given('I send "GET" api request to get all accounts')
def step_impl():
    raise NotImplementedError(u'STEP: And I send "GET" api request to get all accounts')


@then('I should get "200" response and validate if my account is in the list')
def step_impl():
    raise NotImplementedError(u'STEP: Then I should get "200" response and validate if my account is in the list')


@then('I should get "200" response')
def step_impl():
    print("s2")

