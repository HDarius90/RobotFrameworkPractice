*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://teveclub.hu/
${BROWSER}      chrome
${tevenev}  Patás Nyunyu
${hivojel}  gyereideakurvaanyad

*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers


loginToApplication
    input text  name:tevenev    ${tevenev}
    input text  name:pass   ${hivojel}
    click element   //input[contains(@type,'image')]

Learning
    click element    //a[@href='/tanit.pet']
    click element    //input[contains(@value,'Tanulj teve!')]
    click element    //area[contains(@shape,'poly')]

Feeding
    ${countFood}=    get element count    xpath://select[contains(@name,'kaja')]/option
    ${countDrink}=    get element count    xpath://select[contains(@name,'pia')]/option
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    select from list by value    kaja   ${countFood}
    select from list by value    pia   ${countDrink}
    click element    //input[contains(@value,'Mehet!')]