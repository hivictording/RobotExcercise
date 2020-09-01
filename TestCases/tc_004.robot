*** Settings ***
Resource    ../Resource/rs1.robot
Documentation    This test suite is for testing ABC

*** Test Cases ***
Open Cisco
    [Documentation]    test case for open cisco
    ${url}=    set variable    http://www.cisco.com
    ${browser}=    set variable    Firefox
#    log to console    ${url}
    ${title}=    start browser    ${url}    ${browser}
    log to console    ${title}