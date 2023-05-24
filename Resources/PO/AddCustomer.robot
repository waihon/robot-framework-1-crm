*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER_SUBMIT_BUTTON} =         Submit
${ADD_CUSTOMER_EMAIL_TEXTBOX} =         id=EmailAddress
${ADD_CUSTOMER_FIRST_NAME_TEXTBOX} =    id=FirstName
${ADD_CUSTOMER_LAST_NAME_TEXTBOX} =     id=LastName
${ADD_CUSTOMER_CITY_TEXTBOX} =          id=City
${ADD_CUSTOMER_STATE_DROPDOWN} =        id=StateOrRegion
${ADD_CUSTOMER_GENDER_RADIO} =          gender
${ADD_CUSTOMER_PROMO_CHECKBOX} =        name=promos-name

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Add Customer

Add New Customer
    Fill Customer Fields
    Click Submit Button

Click Submit Button
    Click Button                ${ADD_CUSTOMER_SUBMIT_BUTTON}

Fill Customer Fields
    Input Text                  ${ADD_CUSTOMER_EMAIL_TEXTBOX}       janedoe@gmail.com
    Input Text                  ${ADD_CUSTOMER_FIRST_NAME_TEXTBOX}  Jane
    Input Text                  ${ADD_CUSTOMER_LAST_NAME_TEXTBOX}   Doe
    Input Text                  ${ADD_CUSTOMER_CITY_TEXTBOX}        Dallas
    Select From List By Value   ${ADD_CUSTOMER_STATE_DROPDOWN}      TX
    Select Radio Button         ${ADD_CUSTOMER_GENDER_RADIO}        female
    Select Checkbox             ${ADD_CUSTOMER_PROMO_CHECKBOX}