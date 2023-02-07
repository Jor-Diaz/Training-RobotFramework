*** Settings ***
Documentation    Alert Test
Library    SeleniumLibrary

*** Variables ***
${url}=    https://testpages.herokuapp.com/styled/alerts/alert-test.html
${url2}=    https://demo.seleniumeasy.com/bootstrap-modal-demo.html
${browser}=    firefox


*** Test Cases ***
First Case
    [Documentation]    Demo Check alerts
    [Tags]    test1
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Title Should Be    Test Page For JavaScript Alerts
    Set Selenium Implicit Wait    5
    Set Selenium Speed    0.5s

    Click Button    id=alertexamples
    Handle Alert    accept

    Click Button    id=confirmexample
    Handle Alert    accept

    Click Button    id=confirmexample
    Handle Alert    dismiss

    Click Button    id=alertexamples
    Alert Should Be Present    I am an alert box!
    

    Sleep    2
    Close Browser

Second Case
    [Documentation]    Demo Check alerts Bootstrap Modal
    [Tags]    test2
    Open Browser    ${url2}   ${browser}
    Maximize Browser Window
    
    Set Selenium Implicit Wait    5
    Set Selenium Speed    0.5s

    Click Element    xpath=//a[@href='#myModal0']
    Click Element    xpath=(//a[@href='#'][contains(.,'Save changes')])[1]
    
    Click Element    xpath=//a[@href='#myModal0']
    Click Element    xpath=(//a[@href='#'][contains(.,'Close')])[1]

    Sleep    2
    Close Browser
*** Keywords ***