*** Settings ***
Documentation    Study Robot-Framework file
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
First Case
    [Documentation]    First test of system
    [Tags]    test1
    Open Browser    https://demoqa.com/text-box
    Maximize Browser Window
    Input Text    id=userName    Soniso
    Input Text    id=userEmail    Soniso@text.com
    Input Text    id=currentAddress    Soniso addres 1
    Input Text    id=permanentAddress    Soniso addres 2
    Sleep    1
    Execute Javascript    window.scrollTo(0,250)
    Sleep    1
    Close Browser
Second Case Test
    [Documentation]    Second test of system
    [Tags]    test2
    Open Browser    https://demoqa.com/text-box
    Maximize Browser Window
    Input Text    id=userName    Mando
    Input Text    id=userEmail    mando@text.com
    Input Text    id=currentAddress    Mando addres 1
    Input Text    id=permanentAddress    Mando addres 2
    Sleep    1
    Execute Javascript    window.scrollTo(0,250)
    Sleep    1
    Close Browser
    
*** Keywords ***