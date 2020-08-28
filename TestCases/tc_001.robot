*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${cisco}    http://www.cisco.com

*** Test Cases ***
tc 1 browse cisco
    open browser    ${cisco}    ${browser}
    close browser
