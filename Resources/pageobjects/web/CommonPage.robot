*** Settings ***
Library    Zoomba.GUILibrary

*** Keywords ***
Get page title
    ${result} =    Get Title
    [Return]    ${result}