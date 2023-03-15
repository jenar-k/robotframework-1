*** Settings ***
Library         SeleniumLibrary
Suite Setup     Open Browser        ${webURL}       ${BROWSERS}
Suite Teardown  Close Browser
Test Template   I Login with invalid username and invalid password

*** Variables ***
${webURL}       https:/www.saucedemo.com
${BROWSERS}     Chrome


*** Keywords ***
I Login with invalid username and invalid password
    Maximize Browser Window
    [Arguments]             ${username}             ${password}
    Input Text              id=user-name            ${username}
    Input Text              id=password             ${password}
    Click Element           id=login-button
    Page Should Contain                             Epic sadface: Username and password do not match any user in this service

*** Test Cases ***
Login with invalid user A    userA                  passwordA
Login with invalid user B    userB                  passwordB
Login with invalid user C    userc                  passwordC
