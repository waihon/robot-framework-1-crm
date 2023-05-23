*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

# Run the script:
# robot -d results tests/crm.robot

*** Variables ***
${BROWSER} =                    chrome
${URL} =                        https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =          admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =       MyPassword!


*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is some basic info about the test
    [Tags]                      1006    Smoke    Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

    # Add Customer
    click link                  id=new-customer
    page should contain         Add Customer

    input text                  id=EmailAddress     janedoe@gmail.com
    input text                  id=FirstName        Jane
    input text                  id=LastName         Doe
    input text                  id=City             Dallas
    select from list by value   id=StateOrRegion    TX
    select radio button         gender              female
    select checkbox             name=promos-name
    click button                Submit
    wait until page contains    Success! New customer added.

    # Log out
    Click Link                  Sign Out
    Wait Until Page Contains    Signed Out

*** Keywords ***
