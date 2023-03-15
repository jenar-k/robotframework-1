*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${webURL}       ${BROWSERS}
Test Teardown   Close Browser

*** Variables ***
${webURL}       https:/www.saucedemo.com
${BROWSERS}     Chrome

*** Test Cases ***
I Login with invalid username and invalid password
    Maximize Browser Window
    Input Text              id=user-name            Jenar
    Input Text              id=password             Jenar
    Click Element           id=login-button
    Page Should Contain                             Epic sadface: Username and password do not match any user in this service

I Login with valid username and valid password
    Maximize Browser Window
    Input Text              id=user-name            standard_user
    Input Text              id=password             secret_sauce
    Click Element           id=login-button
    Page Should Contain                             Products