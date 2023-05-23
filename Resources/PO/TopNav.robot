*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${TOP_NAV_SIGNIN_LINK} =        id=SignIn

*** Keywords ***
Click "Sign In" Link
    Click Link                  ${TOP_NAV_SIGNIN_LINK}
