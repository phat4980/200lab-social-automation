*** Settings ***
Resource        ../Resource/resources.robot

*** Keywords ***
Test Teardown    Close All Browsers

*** Test Cases ***
TC_001: Verify login successfully with valid account
    [Documentation]    Login with valid account
    ...    [Precondition]:
    ...    1. Valid connection
    ...    2. Valid account
    ...    3. Browser installed
    ...    [Steps]:
    ...    1. Open browser and navigate to website
    ...    2. Input username
    ...    3. Input password
    ...    4. Click to login button
    [Tags]    Acceptance Testing
    Open new browser and navigate to website
    Login with valid account
    Click to login button
    Verify profile logo is displayed
    Capture Page Screenshot
    [Teardown]    Test Teardown