*** Settings ***
Resource    CommonPage.robot

*** Keywords ***
User verify page "Title" is
    [Arguments]    ${title}
    ${result} =    CommonPage.Get page title
    Should Be Equal    ${title}    ${result}