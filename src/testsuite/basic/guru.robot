*** Settings ***
Variables    ../../locator/basic/guru_locators.py
Library      SeleniumLibrary
Library      String

*** Variables ***
${GURU_URL}    https://demo.guru99.com/


*** Test Cases ***
Verify navbar of guru Page
    Open Browser       ${GURU_URL}    chrome
    @{options}=     Create List    Selenium      Insurance Project    Agile Project    Bank Project    Security Project
    ...    Telecom Project    Payment Gateway Project    New Tours    SEO
    Capture Page Screenshot
    FOR     ${option}    IN     @{options}
        ${option_locator}=     Format String    ${GURU_NAVBAR}    ${option}
        Element Should Be Visible    ${option_locator}
        Log    ${option}
    END

Verify header of payment gateway project
    Open Browser       ${GURU_URL}    chrome
    @{options}=     Create List    Guru99 Payment Gateway    Cart    Generate Card Number    Check Credit Card Limit
    Capture Page Screenshot
    ${navbar_locator}=     Format String    ${GURU_NAVBAR}    Payment Gateway Project
    Click Element    ${navbar_locator}
    FOR     ${option}    IN     @{options}
        ${option_locator}=     Format String    ${PAYMENT_HEADER}    ${option}
        Element Should Be Visible    ${option_locator}
        Log    ${option}
    END


*** Keywords ***

