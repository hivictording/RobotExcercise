*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Init Test
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window
#    ${title}=    get title
#    [Return]    ${title}

End Test
    close browser