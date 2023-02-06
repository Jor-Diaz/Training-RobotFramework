*** Settings ***
Documentation    Check fields site
Library    SeleniumLibrary

*** Variables ***
${url}=    https://demoqa.com/text-box
${browser}=    firefox
${name}=    Soniso
${email}=    Soniso@test.com

*** Test Cases ***
First Case
    [Documentation]    First Case check
    [Tags]    Case 1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window    
    Title Should Be    DEMOQA
    ${field}=    Set Variable    id=userName
    Element Should Be Visible    ${field}
    Element Should Be Enabled    ${field}
    Input Text    id=userName    ${name}    
    Input Text    id=userEmail    ${email}

    ${dir1}=    Set Variable    id=currentAddress
    Element Attribute Value Should Be    ${dir1}    placeholder    Current Address
    Input Text    id=currentAddress    soniso direcction    
    ${notfield}=    Set Variable    id=permanent
    Element Should Not Be Visible    ${notfield}
    Input Text    id=permanentAddress    direccion 2    
    
    Execute Javascript    window.scrollTo(0,270)
    Click Button    id=submit
    Close Browser

*** Keywords ***