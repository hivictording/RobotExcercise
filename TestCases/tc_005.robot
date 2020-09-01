*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../Resource/rs2.robot
#Test Setup    Init Test    ${URL}    ${Browser}
#Test Teardown    End Test
Suite Setup    Init Test    ${URL}    ${Browser}
Suite Teardown   End Test

*** Variables ***
${URL}    http://localhost:3000
${Browser}    Firefox

*** Test Cases ***
Add Controlled Form User
    &{vding}=    create dictionary    username=hivictor    password=password    email=vding@sonicwall.com
    &{mzhu}=    create dictionary    username=himary    password=password    email=mzhu@sonicwall.com
    &{mding}=    create dictionary    username=himario    password=password    email=mding@sonicwall.com
    @{users}=    create list    ${vding}    ${mzhu}    ${mding}

    set selenium speed    1 seconds

    FOR    ${i}    IN    @{users}
    ${username}=    get from dictionary    ${i}    username
    ${password}=    get from dictionary    ${i}    password
    ${email}=    get from dictionary    ${i}    email
    input text    id:username    ${username}
    input password    id:password    ${password}
    input text    id:email    ${email}
    click button    xpath://form[1]/div[@class='input-group'][4]/input
    END

    sleep    5 seconds

Add Uncontrolled Form User
    set selenium speed    1 seconds
    input text    id:uf_username    hirobot
    input password    id:uf_password    hirobot
    input text    id:uf_email    robot@sonicwall.com
    click button    xpath://form[2]/div[@class='input-group'][4]/input
    sleep    5 seconds

