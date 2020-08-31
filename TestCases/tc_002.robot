*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Firefox
${url}    http://localhost:3000
${username}    hivictor
${password}    sonicwall
${email}    vding@sonicwall.com

*** Test Cases ***
ADD NEW USER
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    1 seconds
    wait until keyword succeeds    2 minutes    3 seconds    Add User Details    ${username}    ${password}    ${email}
    sleep    10s
    close browser

*** Keywords ***
Add User Details
    [Arguments]    ${username}    ${password}    ${email}
    input text    id:username    ${username}
    input password    id:password    ${password}
    input text    id:email    ${email}
    click button    xpath://form[1]/div[@class='input-group'][4]/input