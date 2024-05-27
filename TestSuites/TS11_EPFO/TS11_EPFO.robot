*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/EPFOPage.robot

*** Test Cases ***
Verifying EPFO page
    [Documentation]    TC-1 Test the EPFO page
    [Tags]             Sanity
    Login to the application and search customer name
    Scroll menu bar down
    Click EPFO Link
    sleep    5s
    location should contain    epfo
#    [Teardown]    Close Browser
