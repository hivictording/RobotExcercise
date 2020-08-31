*** Settings ***
Resource    ../Resource/rs1.robot

*** Test Cases ***
Open Cisco
    ${url}=    set variable    http://www.cisco.com
    ${browser}=    set variable    Firefox
#    log to console    ${url}
    start browser    ${url}    ${browser}