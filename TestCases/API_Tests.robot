*** Settings ***
Resource    ../Resources/BaseTestAPI.robot

*** Variables ***
${bookstore}    /BookStore/v1/Books

*** Test Cases ***
Get_BookStore_Info
    ${response}=    Call Get Request    ${HEADERS}    ${BASE_URL}    ${bookstore}
    

    #validations
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

    ${body}=    Convert To String    ${response.content}
    Should Contain    ${body}    Git Pocket Guide

    ${contentType_value}=    Get From Dictionary    ${response.headers}    Content-Type
    Should Be Equal    ${contentType_value}    application/json; charset=utf-8
