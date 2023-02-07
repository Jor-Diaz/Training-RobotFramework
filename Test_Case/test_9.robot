*** Settings ***
Documentation    Alert Test
Library    SeleniumLibrary

*** Variables ***
${url}=    https://testpages.herokuapp.com/frames/index.html
${browser}=    firefox


*** Test Cases ***
First Case
    [Documentation]    Demo Check alerts
    [Tags]    test1
    Open Browser    ${url}   ${browser}
    Maximize Browser Window

    Set Selenium Implicit Wait    5
    Set Selenium Speed    0.5s

    Select Frame    name=menu
    click link    xpath=//a[@href='white.html'][contains(.,'White Page')]
    Unselect Frame

    Select Frame    name=topNav
    click link    xpath=//a[@href='menu_2.html'][contains(.,'Menu 2')]
    Unselect Frame

    Sleep    2
    Close Browser
*** Keywords ***
