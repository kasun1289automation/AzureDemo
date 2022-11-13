*** Settings ***
Resource    ../Resources/BaseTestWeb.robot
Resource    ../Resources/pageobjects/web/Login/LoginPageStep.robot

Test Setup    BaseTestWeb.Launch Application
Task Teardown    BaseTestWeb.Close Application

Library    OperatingSystem

*** Test Cases ***
Valid Login
    Given User signIn    ${username}    ${password}
    And User verify page "Title" is    Swag Labs