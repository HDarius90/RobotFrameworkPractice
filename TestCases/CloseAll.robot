*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
MyTestCase
    open browser    ${url}  ${browser}
    maximize browser window

    open browser    https://www.facebook.com/   ${browser}
    #close browser
    close all browsers