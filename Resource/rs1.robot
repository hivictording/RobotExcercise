*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Start Browser
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    ${title}=    get title
    [Return]    ${title}

