*** Settings ***
Library    Zoomba.GUILibrary

*** Variables ***
# Login page locators
${LoginUsernameInputbox}    id:user-name
${LoginPasswordInputbox}    id:password
${LoginButton}    id:login-button


*** Keywords ***
SignIn
    [Arguments]    ${username}    ${password}
    Input Text     ${LoginUsernameInputbox}    ${username}
    Input Text     ${LoginPasswordInputbox}    ${password}
    Click Button     ${LoginButton}

Verify Page Loaded