*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    # Initialize Selenium
    #Set Selenium Speed          0.2s
    Set Selenium Timeout        10s

    Log                         Starting the test case!
    Open Browser                ${URL}      ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Customers Are Priority One

End Web Test
    Close All Browsers
