*** Settings ***
Resource    ../Resource/CommonFunctionality.resource

Test Setup         Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
Registration_test
    Click Element    xpath=(//a[@data-modal="regModal"])[2]
    Input Text    name=firstname   Janu Setty
    Input Text    xpath=(//input[@class='animate-input log-mobile onlynumbers'])[3]     9347353848
    # Click Element    link=Verify with OTP    otp=56941
    Sleep    10s
    Input Text    xpath=//input[@id='email']    Janusetty@gmail.com
    Input Password    id=password1-mreg    Janu@987
    Click Element    id=formSubmit-popup_reg_form
