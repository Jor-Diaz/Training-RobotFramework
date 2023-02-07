*** Settings ***
Documentation    Base
Library    SeleniumLibrary

*** Variables ***
${url}=    https://demoqa.com/text-box
${browser}=    firefox


*** Test Cases ***
Base Case
    [Documentation]    Base Case
    [Tags]    test1
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10 
    Set Selenium Speed    0.3s
    
    Sleep    2
    Close Browser
*** Keywords ***