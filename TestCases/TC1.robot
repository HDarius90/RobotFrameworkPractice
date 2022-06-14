*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/login_resources_TC1.robot
Suite Setup    Open my Browser
Suite Teardown    Close Browsers


*** Test Cases ***
LoginTest
    set selenium speed    1 seconds

    loginToApplication

TodoTest
    Feeding
    Learning








