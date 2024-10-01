*** Settings ***
Library    SeleniumLibrary

*** Comments ***
# This suite tests the login functionality of the application.

*** Variables ***
${URL}          http://example.com
${USERNAME}     user
${PASSWORD}     pass

*** Test Cases ***
Login Test
    [Documentation]    This test case verifies user login.
    Open Browser    ${URL}    chrome
    Input Text    username_field    ${USERNAME}
    Input Text    password_field    ${PASSWORD}
    Login To Application    ${USERNAME}    ${PASSWORD}
    Click Button    login_button
    Page Should Contain    Welcome

*** Keywords ***
Login To Application
    [Arguments]    ${username}    ${password}
    Input Text    username_field    ${username}
    Input Text    password_field    ${password}
    Click Button    login_button
