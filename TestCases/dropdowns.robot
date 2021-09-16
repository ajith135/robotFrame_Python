*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.practiceselenium.com/practice-form.html

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed      2seconds    #setting eecution speed for each statement . So that the control will wait 2 seconds before executing each statement

    # selecting dropdown by label
    select from list by label    continents  Australia

    # selecting dropdown by label
    select from list by index    continents  5

    # selecting dropdown by value
    select from list by value    conyinents  Asia


    ##List Box
    select from list by label    selenium-commands  Java
    select from list by index    selenium-commands  Python
    select from list by value    selenium-commands  Something
    ##Unselect List box
    unselect from list by label     selenium-commands  Java