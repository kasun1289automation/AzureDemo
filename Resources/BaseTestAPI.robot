*** Settings ***
Library    Zoomba.APILibrary
Library    Collections

*** Variables ***
&{HEADERS}=    Content-Type=application/json    charset=utf-8
${BASE_URL}=    https://demoqa.com