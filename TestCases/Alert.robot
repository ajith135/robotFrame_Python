*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Alerts Testing
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window

    click element  xpath://button[contains(text(),'Click Me')]
    sleep   3
    #handle alert    accept  #To accept alert
    #handle alert    dismiss     #To dismiss alert
    handle alert    leave   #To leave alert as it is
    sleep   3
    #alert should be present     Press a button!     #To validate text in alert box
    alert should not be present     Press a button!     #To validate text in alert box
    sleep   3
    close all browsers


*** Keywords ***
