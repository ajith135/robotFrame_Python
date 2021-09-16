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

    # selecting radio buttons
    select radio button     sex  Female
    select radio button     exp     5

    #selecting checkbox
    select check box       BlackTea
    select check box        RedTea

    #Unselecting checkbox
    unselect check box      BlackTea
