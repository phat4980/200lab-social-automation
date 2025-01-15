*** Settings ***
Resource        ../Resource/resources.robot

*** Keywords ***
Test Teardown    Close All Browsers

*** Test Cases ***
TC_001: Verify login successfully with valid account
    [Documentation]    Test login functionality using valid username and password
    ...    [Precondition]:
    ...    1. Valid connection
    ...    2. Valid account
    ...    3. Browser installed
    ...    [Steps]:
    ...    1. Open browser and navigate to website
    ...    2. Enter a valid username in the Username field
    ...    3. Enter a valid password in the Password field
    ...    4. Click the Sign In button
    [Tags]    Fucntional Testing
    Open new browser and navigate to website
    Set Browser Implicit Wait    ${db_time_wait}
    Login with valid account
    Click to login button
    Verify profile logo is displayed
    [Teardown]    Test Teardown


TC_002: Verify "Sign in with Google" functionality
    [Documentation]    Test login functionality using Google authentication
    ...    [Precondition]:
    ...    1. Valid connection
    ...    2. Valid Google account
    ...    3. Browser installed
    ...    [Steps]:
    ...    1. Open browser and navigate to website
    ...    2. Click the "Sign in with Google" button
    ...    3. Enter a valid Google account
    ...    4. Grant permissions for Google Account
    ...    5. Verify Home page is displayed
    [Tags]    Fucntional Testing
    Open new browser and navigate to website
    Click on "Sign in with Google" button
    # Manual step grant permissions for Google Account
    Verify profile logo is displayed
    [Teardown]    Test Teardown
    