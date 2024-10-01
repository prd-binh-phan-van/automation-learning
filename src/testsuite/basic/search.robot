*** Settings ***
Variables   ../../constant/config.py

Library    SeleniumLibrary

*** Variables ***
${URL}     https://en.wikipedia.org/wiki/
${Key}     python

*** Test Cases ***
Open Python Define Website
    Open Browser    ${URL}${key}    ${CHROME}
    Sleep    3s
    Title Should Be    Python - Wikipedia
    Click Element    //input[contains(@id, 'skin-client-pref-skin-theme-value-night')]
    Capture Page Screenshot
    Close Browser
