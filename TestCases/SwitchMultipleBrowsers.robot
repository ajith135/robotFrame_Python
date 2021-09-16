*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Alerts Testing
    open browser    https://www.google.com    chrome
    maximize browser window

    open browser    https://www.facebook.com    chrome
    maximize browser window

    sleep    3

    switch browser  1
    ${title} =  get title
    log to console  ${title}

    switch browser  2
    ${title} =  get title
    log to console  ${title}

    close all browsers