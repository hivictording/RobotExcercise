*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Firefox
${facebook}    http://www.facebook.com/

*** Test Cases ***
tc 1 browse facebook website
    open browser    ${facebook}    ${browser}
    maximize browser window
    input text    xpath://input[@id='email']    someone@email.com
    input text    xpath://input[@id='email']/parent::div/following-sibling::div/input[@id='pass']    password
    sleep    3s
    clear element text    name:email
    sleep    3s
    clear element text    name:pass
    close browser
