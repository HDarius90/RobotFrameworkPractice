*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://teveclub.hu/
${BROWSER}      headlesschrome


*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers


loginToApplication
    [Arguments]    ${appusername}  ${apppassword}
    input text  name:tevenev    ${appusername}
    input text  name:pass   ${apppassword}
    click element   //input[contains(@type,'image')]

Learning
    click element    //a[@href='/tanit.pet']

    ${lessonPresent}=  Run Keyword And Return Status    page should contain    Válaszd ki, hogy mit tanuljon a tevéd:
    IF    ${lessonPresent}
        select from list by index    xpath://*[@id="content ize"]/tbody/tr/td/table/tbody/tr[1]/td/font/b/div/form/div[1]/select    0
        click element    //*[@id="content ize"]/tbody/tr/td/table/tbody/tr[1]/td/font/b/div/form/div[2]/input
    ELSE
        click element    //input[contains(@value,'Tanulj teve!')]
        click element    //area[contains(@shape,'poly')]
    END

Feeding
    ${feedable}=    run keyword and return status    element should be visible    //input[contains(@value,'Mehet!')]
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    IF    ${feedable}
        ${countFood}=    get element count    xpath://select[contains(@name,'kaja')]/option
        ${countDrink}=    get element count    xpath://select[contains(@name,'pia')]/option
        select from list by value    kaja   ${countFood}
        select from list by value    pia   ${countDrink}
        click element    //input[contains(@value,'Mehet!')]
    END
