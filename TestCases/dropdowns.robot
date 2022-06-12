*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Handling DrpDowns and Lists
    open browser    ${url}  ${browser}
    maximize browser window

    select from list by label    continents     Asia
    select from list by index    continents     2
    #select from list by value    continents     value

    #list box
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   Wait Commands
    unselect from list by label   selenium_commands   Switch Commands


*** Keywords ***
