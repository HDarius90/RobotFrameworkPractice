*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
RegTest



    open browser    ${url}  ${browser}
    maximize browser window

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}
    set selenium implicit wait    10 seconds
     ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}


    input text    name:firstname1    Dari
    input text    name:lastname     Hadji
    select radio button    sex  Male
    select radio button    exp  1
    select checkbox    name:tool
    select checkbox    //input[contains(@value,'Automation Tester')]
    select from list by label    continents     Asia
    select from list by label   selenium_commands   Switch Commands




*** Keywords ***
