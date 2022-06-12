*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    #Right clcik/open context menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral'][contains(.,'right click me')]
    sleep   3

    #Double clcik action
    go to   https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[@ondblclick='myFunction1()'][contains(.,'Copy Text')]
    sleep    3


    #Drag and Drop
    go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop   id:box6    id:box106
    sleep   3


    close browser