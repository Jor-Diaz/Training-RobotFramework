*** Settings ***
Documentation    Form Test Case
Library    SeleniumLibrary

*** Variables ***
${url}=    https://demo.seleniumeasy.com/input-form-demo.html
${browser}=    firefox


*** Test Cases ***
First Case
    [Documentation]    First 4 fields 
    [Tags]    test1
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10 
    Set Selenium Speed    .1s
    
    Element Should Be Visible    name=first_name
    Input Text    name=first_name    Soniso
    Input Text    name=last_name    Test
    Input Text    name=email    Soniso@test.test

    Element Should Be Enabled    name=phone
    Input Text    name=phone    1234567891
    Input Text    name=address    address 1
    Input Text    name=city    Lyon

    Execute Javascript    window.scrollTo(0,200)

    Element Should Be Visible    name=state
    Select From List By Index    state    4
    Input Text    name=zip    1234
    Input Text    name=website    www.soniso.test

    Select Radio Button    hosting    yes
    Input Text    name=comment    Test work!
    Click Button    //button[@type='submit'][contains(.,'Send')]

    Sleep    2
    Close Browser
*** Keywords ***