*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/login_resources_TC1.robot
Library    DataDriver   ../TestData/LoginDataTTC.xlsx  sheet_name=Sheet1
Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    LoginWithExcel

*** Test Cases ***
LoginWithDataFromExcel    ${username}     ${password}


TodoTest
    Feeding
    Learning


*** Keywords ***
LoginWithExcel
    [Arguments]    ${username}  ${password}
    set selenium speed    1
    loginToApplication    ${username}   ${password}




