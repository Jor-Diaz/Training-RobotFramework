*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
First Test
    Open Browser    https://demoqa.com/text-box    firefox
    Maximize Browser Window    
    Input Text    id=userName    Soniso    
    Input Text    id=userEmail    Soniso@test.com    
    Input Text    id=currentAddress    soniso direcction    
    Input Text    id=permanentAddress    direccion 2    
    Sleep    2
    Execute Javascript    window.scrollTo(0,200)
    Sleep    2
    Click Button    id=submit
    Close Browser
     

*** Keywords ***