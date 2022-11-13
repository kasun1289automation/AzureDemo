*** Settings ***
Library    Zoomba.GUILibrary
Variables    ./config/application_config.yaml

*** Keywords ***
Launch Application
    IF    ${headless} == True
        IF    "${browser}" == "chrome"
            ${browser} =    Set Variable    headlesschrome
        ELSE IF    "${browser}" == "firefox"
            ${browser} =    Set Variable    headlessfirefox
        END        
    END
    Open Browser    ${app_url}    ${browser}
    Maximize Browser Window


Close Application
    Close All Browsers