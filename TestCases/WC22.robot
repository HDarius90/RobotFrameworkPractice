*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://127.0.0.1:5500/index.html

*** Test Cases ***
ANYAD
    open browser    ${url}  ${browser}
    maximize browser window
    handle alert
    select from list by index    (//select[@class='match-result'])[1]     3
    select from list by index    (//select[@class='match-result'])[2]     3
    select from list by index    (//select[@class='match-result'])[3]     3
    select from list by index    (//select[@class='match-result'])[4]     3
    select from list by index    (//select[@class='match-result'])[5]     3
    select from list by index    (//select[@class='match-result'])[6]     3
    select from list by index    (//select[@class='match-result'])[7]     3
    select from list by index    (//select[@class='match-result'])[8]     3
    select from list by index    (//select[@class='match-result'])[9]     3
    select from list by index    (//select[@class='match-result'])[10]     3
    select from list by index    (//select[@class='match-result'])[11]     3
    select from list by index    (//select[@class='match-result'])[12]     3
    select from list by index    (//select[@class='match-result'])[13]     3
    select from list by index    (//select[@class='match-result'])[14]     3
    select from list by index    (//select[@class='match-result'])[15]     3
    select from list by index    (//select[@class='match-result'])[16]     3
    select from list by index    (//select[@class='match-result'])[17]     3
    select from list by index    (//select[@class='match-result'])[18]     3
    select from list by index    (//select[@class='match-result'])[19]     3
    select from list by index    (//select[@class='match-result'])[20]     3
    select from list by index    (//select[@class='match-result'])[21]     3
    select from list by index    (//select[@class='match-result'])[22]     3
    select from list by index    (//select[@class='match-result'])[23]     3
    select from list by index    (//select[@class='match-result'])[24]     3
    select from list by index    (//select[@class='match-result'])[25]     3
    select from list by index    (//select[@class='match-result'])[26]     3
    select from list by index    (//select[@class='match-result'])[27]     3
    select from list by index    (//select[@class='match-result'])[28]     3
    select from list by index    (//select[@class='match-result'])[29]     3
    select from list by index    (//select[@class='match-result'])[30]     3
    select from list by index    (//select[@class='match-result'])[31]     3
    select from list by index    (//select[@class='match-result'])[32]     3
    select from list by index    (//select[@class='match-result'])[33]     3
    select from list by index    (//select[@class='match-result'])[34]     3
    select from list by index    (//select[@class='match-result'])[35]     3
    select from list by index    (//select[@class='match-result'])[36]     3
    select from list by index    (//select[@class='match-result'])[37]     3
    select from list by index    (//select[@class='match-result'])[38]     3
    select from list by index    (//select[@class='match-result'])[39]     3
    select from list by index    (//select[@class='match-result'])[40]     3
    select from list by index    (//select[@class='match-result'])[41]     3
    select from list by index    (//select[@class='match-result'])[42]     3
    select from list by index    (//select[@class='match-result'])[43]     3
    select from list by index    (//select[@class='match-result'])[44]     3
    select from list by index    (//select[@class='match-result'])[45]     3
    select from list by index    (//select[@class='match-result'])[46]     3
    select from list by index    (//select[@class='match-result'])[47]     3
    select from list by index    (//select[@class='match-result'])[48]     3


