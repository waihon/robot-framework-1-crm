*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${LOGGED_OUT_HEADER_LABEL} =    Signed Out

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${LOGGED_OUT_HEADER_LABEL}