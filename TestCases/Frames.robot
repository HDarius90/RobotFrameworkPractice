*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
FrameHandleing
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/chromium/package-summary.html    chrome

    select frame    packageListFrame    #id or name or xpath
    click link    org.openqa.selenium
    unselect frame

    sleep    3
    select frame    packageFrame
    click link    WebDriver
    unselect frame

    sleep    3
    select frame    classFrame
    click link    Help
    unselect frame

    close browser