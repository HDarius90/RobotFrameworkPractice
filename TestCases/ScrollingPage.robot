*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    #execute javascript    window.scrollTo(0,2500)
    #scroll element into view    xpath://img[contains(@alt,'Flag of Iran')]
    execute javascript    window.scrollTo(0,document.body.scrollHeight)             #end of the page
    sleep    3
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)            #start of the page

*** Keywords ***
