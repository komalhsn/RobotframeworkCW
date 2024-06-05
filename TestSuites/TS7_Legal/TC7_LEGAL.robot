*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/LegalPage.robot

*** Test Cases ***
Verifying Legal page
    [Documentation]    TC-1 Test the Legal page
    [Tags]             Sanity
    Login to the application and search customer name
    Click Legal Link
    sleep    5s
    location should contain    legal
#    [Teardown]    Close Browser
