*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.xlsx  sheet_name=Sheet1

Suite Setup    Open my Browser
Suite Teardown    Close Browser
Test Template    Invalid login
*** Test Cases ***
LoginTestwithExcel using    ${username}     ${password}

*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    input username    ${username}
    input pwd    ${password}
    click login button
    error message should be visible