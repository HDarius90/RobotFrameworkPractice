*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}  https://teveclub.hu/
${browser}  chrome
${tevenev}  Patás Nyunyu
${hivojel}  gyereideakurvaanyad

*** Test Cases ***
TC1
    ${PageTitle}=   launchBrowser   ${url}  ${browser}
    log    ${PageTitle}
    input text  name:tevenev    ${tevenev}
    input text  name:pass   ${hivojel}

