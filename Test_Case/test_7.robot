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
    Title Should Be    Selenium Easy - Input Form Demo with Validations
    Set Selenium Implicit Wait    8
    Set Selenium Speed    .1s
    
    Wait Until Page Contains    Input form with validations
    Wait Until Page Does Not Contain    Input forr
    Wait Until Page Contains    Demo Home

    Wait Until Page Contains Element    //legend[contains(.,'Contact Us Today!')]
    Wait Until Page Contains Element    contact_form
    Wait Until Page Does Not Contain Element    contact_forr

    Wait Until Element Is Visible    name=first_name
    Wait Until Element Is Enabled    name=first_name
    #Element Should Be Visible    name=first_name
    Input Text    name=first_name    Soniso
    Input Text    name=last_name    Test

    Input Text    name=email    Soniso
    Wait Until Page Contains    Please supply a valid email address
    Log To Console    Check email Ok
    Wait Until Element Is Visible    //small[contains(@data-bv-validator,'emailAddress')]
    Log To Console    Check email Ok

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