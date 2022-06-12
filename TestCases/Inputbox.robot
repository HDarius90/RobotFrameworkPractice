*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://teveclub.hu/

*** Test Cases ***

TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be   TeveClub! - Kérj magadnak egy tevét!
    ${tevedNeve}  set variable    name:tevenev
    ${"hivojele"}   set variable    name:pass

    element should be visible    ${tevedNeve}
    element should be enabled    ${tevedNeve}

    input text  ${tevedNeve}  Patás Nyunyu
    input text    ${"hivojele"}     gyereideakurvaanyad
    clear element text    ${tevedNeve}
    sleep   5
    clear element text    ${tevedNeve}
    sleep   3
    close browser



*** Keywords ***
