*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click element    xpath:(//button[@class='btn btn-info'][contains(.,'click')])[1]
    switch window    title=Selenium     #it works with url also
    click element    //a[contains(@class,'selenium-button selenium-webdriver text-uppercase font-weight-bold')]
    sleep   3
    close all browsers