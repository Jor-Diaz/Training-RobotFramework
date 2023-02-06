*** Settings ***
Documentation    Test Radio Button and Checkbox
Library    SeleniumLibrary

*** Variables ***
${url}=    https://demo.seleniumeasy.com/basic-radiobutton-demo.html
${url2}=    https://demo.seleniumeasy.com/basic-checkbox-demo.html
${browser}=    firefox
${t}=   1

*** Test Cases ***
First Case
    [Documentation]    Test Radio Button
    [Tags]    testradio
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0,100)
    Sleep    ${t}
    Select Radio Button    optradio    Male
    Sleep    ${t}
    
    Close Browser

Second Case
    [Documentation]    Test CheckBox
    [Tags]    testcheckbox
    Open Browser    ${url2}   ${browser}
    Maximize Browser Window
    Sleep    ${t}
    Select Checkbox    id=isAgeSelected
    Sleep    ${t}
    Execute Javascript    window.scrollTo(0,200)
    Sleep    ${t}
    Click Button    xpath=(//input[contains(@type,'checkbox')])[4]
    Sleep    ${t}

    Close Browser
*** Keywords ***