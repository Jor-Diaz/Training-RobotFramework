*** Settings ***
Documentation    Base
Library    SeleniumLibrary

*** Variables ***
${name}     =    Soniso
${ap}    =    For
${am}    =    Test

*** Test Cases ***
First Demo
    [Documentation]    Vars Case 1
    [Tags]    test1
    Log    Test name is ${name} ${ap} ${am}

Second Demo
    [Documentation]    Vars Case 2
    [Tags]    test2
    ${a} =    set variable    ${1.0}
    ${b} =    set variable    ${2.0}
    ${c} =    Evaluate    ${a}+${b}
    Log    Test value is ${c}
*** Keywords ***