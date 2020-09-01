*** Settings ***
Suite Setup    Test Suite Start
Suite Teardown    Test Suite Stop

*** Keywords ***
Test Suite Start
    log    Robot test suite has been started

Test Suite Stop
    log    Robot test suite has been stopped