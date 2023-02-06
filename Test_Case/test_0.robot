*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
First Test
    open browser    https://demoqa.com/text-box    firefox
    sleep    5
    close browser
*** Keywords ***