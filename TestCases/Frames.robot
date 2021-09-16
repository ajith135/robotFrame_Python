*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Alerts Testing
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    maximize browser window

    select frame    packageListFrame
    click link      org.openqa.selenium.docker
    unselect frame
    sleep   3

    select frame    packageFrame
    click element      xpath://h2[@title='Exceptions']
    unselect frame
    sleep   3

    close all browsers


*** Keywords ***
