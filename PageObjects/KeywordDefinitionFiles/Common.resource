*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/GlobalLocators.py
Variables       ../Credentials.py

*** Keywords ***
Click Button And Wait For Element
    [Arguments]     ${buttonSelector}       ${elementToWaitFor}
    Wait Until Page Contains Element        ${buttonSelector}
    Wait Until Element Is Enabled           ${buttonSelector}
    Click Button                            ${buttonSelector}
    Wait Until Page Contains Element        ${elementToWaitFor}