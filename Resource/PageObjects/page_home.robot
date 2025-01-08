*** Settings ***
Library    SeleniumLibrary
Variables    ..\\Resource\\TestData\\GlobalTestData.py
Variables    page_home.py

*** Variables ***

*** Keywords ***
#Actions
Verify profile logo is displayed
    Wait Until Element Is Visible    locator=${elm_profile_logo}
    Element Should Be Visible    ${elm_profile_logo}