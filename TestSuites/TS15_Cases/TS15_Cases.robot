*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/CasesPage.robot

*** Test Cases ***
Verify Cases page
    [Documentation]    TC-1 Test Cases page
    [Tags]             Sanity
    Login to the application and search customer name
    Click on Cases
    location should contain    cases

