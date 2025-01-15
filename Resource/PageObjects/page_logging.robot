*** Settings ***
Documentation   Page Object for Logging Page
Library    SeleniumLibrary
Variables    ..\\Resource\\TestData\\GlobalTestData.py
Variables    page_logging.py
*** Variables ***
${usr_valid_username}=    ${db_valid_username}
${usr_valid_password}=    ${db_valid_password}

*** Keywords ***
# Initialize
Open new browser and navigate to website
    Open Browser    ${db_url}    ${db_browser}
    Maximize Browser Window

Open new tab and navigate to website
    Execute Javascript    window.open('${db_url}')
    Maximize Browser Window

# Actions
Login with valid account
    Wait Until Element Is Visible    locator=${txt_username}
    Input Text    ${txt_username}    ${usr_valid_username}
    Input Text    ${txt_password}    ${usr_valid_password}

Click to login button
    Click Button    ${btn_login}

Click on "Sign in with Google" button
    Click Element    ${btn_google_login}