*** Settings ***
Documentation    Base
Library    SeleniumLibrary

*** Variables ***
${url}=    https://demoqa.com/text-box
${browser}=    firefox
${t}=   .2 

*** Test Cases ***
Base Case
    [Documentation]    Base Case
    [Tags]    test1
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    
    Close Browser
*** Keywords ***