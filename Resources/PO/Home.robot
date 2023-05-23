*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =          Customers Are Priority One

*** Keywords ***
Navigate To
    Go To                       ${URL}

Verify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_LABEL}    timeout=5s
