*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    1seconds

    #Selecting Radio buttons
    select radio button    sex  Male
    select radio button    exp  1

    #Selecting Chechbox
    select checkbox    //input[contains(@value,'Manual Tester')]
    unselect checkbox    //input[contains(@value,'Manual Tester')]
    select checkbox    //input[contains(@value,'Automation Tester')]

*** Keywords ***
