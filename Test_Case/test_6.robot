*** Settings ***
Documentation    Test Radio Button, Checkbox, ComboBox
Library    SeleniumLibrary

*** Variables ***
${url}=    https://demo.seleniumeasy.com/basic-radiobutton-demo.html
${url2}=    https://demo.seleniumeasy.com/basic-checkbox-demo.html
${url3}=    https://demo.seleniumeasy.com/basic-select-dropdown-demo.html
${browser}=    firefox
${t}=   1.2

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

Third Case
    [Documentation]    Test ComboBox
    [Tags]    testcombobox
    Open Browser    ${url3}   ${browser}
    Maximize Browser Window
    #Set Selenium Timeout    10
    
    Set Selenium Implicit Wait    10 

    Set Selenium Speed    0.2s
    Select From List By Label    select-demo    Monday
    Select From List By Value    select-demo    Saturday
    Select From List By Index    select-demo    1
    
    Execute Javascript    window.scrollTo(0,400)

    Select From List By Index    multi-select    3
    Select From List By Index    multi-select    5
    

    Close Browser
*** Keywords ***