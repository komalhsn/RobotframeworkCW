*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/GSTN_InfoPage.robot

*** Test Cases ***
Verifying GSTN Info page
    [Documentation]    TC-1 Test the GSTN Info page
    [Tags]             Sanity
    Login to the application and search customer name
    sleep    10s
    Scroll menu bar down
    Click GSTN Info Link
    sleep    10s
    location should contain    gstn-info
#    [Teardown]    Close Browser

Verify if user can log the GSTN Info Data on console
    [Documentation]    TC-2 Test if user can log the GSTN Info Data on console
    [Tags]    Sanity
    sleep    10s
    Log GSTN Info data on console