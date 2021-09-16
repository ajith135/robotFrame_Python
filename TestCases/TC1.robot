*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
    #create webdriver    chrome  executable_path="C:\Program Files\Drivers\chromedriver.exe"
    open browser    https://demo.nopcommerce.com/   chrome
    click link  xpath://a[@class='ico-login']
    input text  id:Email    pavanoltraining@gmail.com
    input text  id:Password     Test@123
    click element   xpath://button[@class='button-1 login-button']
    close browser

*** Keywords ***
