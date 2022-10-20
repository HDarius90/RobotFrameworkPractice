*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/login_resources_TC1.robot
Resource    ../TestData/Login_data.robot
Suite Setup    Open my Browser
Suite Teardown    Close Browsers


*** Test Cases ***
Teve visit
    LoginWithData    ${username}     ${password}


TodoTest
    Feeding
    Learning


*** Keywords ***
LoginWithData
    [Arguments]    ${username}  ${password}
    loginToApplication    ${username}   ${password}


