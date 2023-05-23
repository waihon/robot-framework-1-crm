*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${CUSTOMERS_HEADER_LABEL} =     Our Happy Customers

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${CUSTOMERS_HEADER_LABEL}
