*** Settings ***
Library     RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    https://demoqa.com
${bookstore}    /BookStore/v1/Books

*** Test Cases ***
Get_BookStore_Info
    Create Session    mySession    ${base_url}
    ${response}=    GET On Session    mySession    ${bookstore}
    # Log To Console    ${response.status_code}
    # Log To Console    ${response.content}
    # Log To Console    ${response.headers}

    #validations
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

    ${body}=    Convert To String    ${response.content}
    Should Contain    ${body}    Git Pocket Guide

    ${contentType_value}=    Get From Dictionary    ${response.headers}    Content-Type
    Should Be Equal    ${contentType_value}    application/json; charset=utf-8
