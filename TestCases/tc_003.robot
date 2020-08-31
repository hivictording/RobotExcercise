*** Settings ***
Library    Collections

*** Test Cases ***
Variable Test
    ${var1}=  set variable    hello world
    ${var2}=    set variable    hello2    world2
    log to console    ${var1}
    log to console    ${var2}
    ${var3}=    get from list    ${var2}    1
    log to console    ${var3}

List Test
    @{list1}=    create list    hello2    victor    ding
    ${var1}=    get from list    ${list1}    1
    log to console    ${var1}
    @{list2}=   set variable    ${list1}
    log to console    ${list2}
    ${var2}    ${var3}  ${var4}=    set variable    ${list1}
    log to console    ${var4}
    FOR    ${i}    IN RANGE    1    10
    LOG TO CONSOLE    ${i}
    END
    FOR    ${i}    IN    @{list1}
    LOG TO CONSOLE    ${i}
    END

CONDITIONAL KEYWORD TEST
    ${status}=    set variable    true
    ${print}=    set variable    log to console
    run keyword if  '${status}'=='true'   log to console    Status is true.....
    run keyword if  '${status}'=='true'   ${print}    status is okay!
    wait until keyword succeeds
    