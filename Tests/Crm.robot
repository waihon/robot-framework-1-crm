*** Settings ***
Documentation       This is some basic info about the whole suite
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
Home page should load
    [Documentation]             Test navigating to Home page
    [Tags]                      1001    Smoke    Home
    CrmApp.Go to "Home" Page

Should be able to add new customer
    [Documentation]             Test logging a new customer
    [Tags]                      1006    Smoke    Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out

*** Keywords ***
