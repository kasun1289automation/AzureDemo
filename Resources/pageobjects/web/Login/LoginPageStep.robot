*** Settings ***
Resource    ./LoginPage.robot
Resource    ../CommonPageStep.robot

*** Keywords ***
User signIn
    [Arguments]    ${username}    ${password}
    LoginPage.SignIn    ${username}    ${password}

Go to "Login" page   
    LoginPage.Verify Page Loaded