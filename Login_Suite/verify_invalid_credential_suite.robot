* Settings *
Documentation       thise suite will handle Invalid credential
Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser
Test Template   Invalid Credential Template
Library   DataDriver    file=../test_data/data.xlsx   sheet_name=ValidCredential

*** Test Cases ***
Tc1

* Keywords *
Invalid Credential Template
    Click Element    xpath=//a[text()='Existing User? Log In']
    [Arguments]     ${username}     ${password}      ${expected_error}
    Input Text    name=user[new]    ${username}
    Input Text    id=password     ${password}
    Click Element    xpath=//input[@name='usernameLogin']
    Element Text Should Be    xpath=//div[contains(text(),'Incorrect email ID or password')]    expected=${expected_error}