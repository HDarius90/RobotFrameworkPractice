*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
RegTest

    ${speed}=   get selenium speed
    log to console    ${speed}

    open browser    ${url}  ${browser}
    maximize browser window

    set selenium speed    1 seconds
    input text    name:firstname    Dari
    input text    name:lastname     Hadji
    select radio button    sex  Male
    select radio button    exp  1
    select checkbox    name:tool
    select checkbox    //input[contains(@value,'Automation Tester')]
    select from list by label    continents     Asia
    select from list by label   selenium_commands   Switch Commands

    ${speed}=   get selenium speed
    log to console    ${speed}

*** Keywords ***
