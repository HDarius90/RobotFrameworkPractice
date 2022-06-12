*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
RegTest



    open browser    ${url}  ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}
    set selenium timeout    2 seconds
    wait until page contains    Regist              # 5 secs max
    input text    name:firstname    Dari
    input text    name:lastname     Hadji
    select radio button    sex  Male
    select radio button    exp  1
    select checkbox    name:tool
    select checkbox    //input[contains(@value,'Automation Tester')]
    select from list by label    continents     Asia
    select from list by label   selenium_commands   Switch Commands




*** Keywords ***
