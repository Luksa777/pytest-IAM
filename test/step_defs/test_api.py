from pytest_bdd import scenario, given, when, then
import requests
import json

apiurl = "https://nextgenkube.ai-logix.net/authv2"

@scenario('../features/APItest.feature','Api test request')
def test_add():
    pass

@given("I took auth token")
def step_impl():
    apiurl="https://any.ge/weather/api2.php?get=daily&id=611717"
    response = requests.get(apiurl)
    j = str(response.json())
    j = j.replace("'",'"')
    x = json.loads(j)

    print(x)
    print("City>>>>", x['city'])
    print("City>>>>", x)


@given("I send api request")
def step_impl():
    print("s")

@then('I should get "200" response')
def step_impl():
    print("s2")