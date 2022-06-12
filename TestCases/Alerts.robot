*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
AlertHandeling
    open browser    https://testautomationpractice.blogspot.com/    chrome
    click element    //button[@onclick='myFunction()'][contains(.,'Click Me')]    #open alert
    sleep   3
    #handle alert    accept
    #handle alert    dismiss
    handle alert    leave
    alert should be present    Press a button!    #automaticaly close the alert window
