*** Settings ***
Documentation    Real Vars Site Test
Library    SeleniumLibrary

*** Variables ***
${url}=    https://demoqa.com/text-box
${browser}=    firefox
${name}=    Soniso
${email}=    Soniso@test.com

*** Test Cases ***
First Case
    [Documentation]    First Case Vars
    [Tags]    Case 1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window    
    Input Text    id=userName    ${name}    
    Input Text    id=userEmail    ${email}
    Input Text    id=currentAddress    soniso direcction    
    Input Text    id=permanentAddress    direccion 2    
    Sleep    2
    Execute Javascript    window.scrollTo(0,200)
    Sleep    1
    Click Button    id=submit
    Close Browser

*** Keywords ***