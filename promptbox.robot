*** Settings ***
Library                            SeleniumLibrary
Test Setup                         Open Browser                    ${urladress}               ${browsertype} 
Test Teardown                      Close Browser

*** Variables ***
${urladress}                        https://demoqa.com/alerts
${browsertype}                      Chrome

*** Test Cases ***
I need confirm Prompt Box is appears WAIT EXPLICIT
    Maximize Browser Window
    Wait Until Element Is Visible    //button[@id="alertButton"]
    Click Element                    //button[@id="alertButton"]
    Alert Should Be Present          You clicked a button
    Handle Alert                     action=ACCEPT

I need confirm Prompt Box is appears WAIT IMPLICIT
    Maximize Browser Window
    Sleep                            2
    Click Element                    //button[@id="alertButton"]
    Alert Should Be Present          You clicked a button
    Handle Alert                     action=ACCEPT
