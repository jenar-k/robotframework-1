*** Settings ***
Library                            SeleniumLibrary
Test Setup                         Open Browser                    ${urladress}               ${browsertype} 
Test Teardown                      Close Browser

*** Variables ***
${urladress}                        https://demoqa.com/checkbox
${browsertype}                      Chrome

*** Test Cases ***
I want to testing checkbox and selecting NOTES
    # Click expand all
    Click Element                   //button[@title="Expand all"]
    # Click checkbox notes
    Click Element                   //span[contains(text(),'Notes')]
    # VALIDASI data
    Element Should Be Visible       //div[@id="result"]
    Element Should Contain          //div[@id="result"]                      You have selected :
    Element Should Contain          //span[@class="text-success"]            notes
    Element Text Should Be          //span[@class="text-success"]            notes
