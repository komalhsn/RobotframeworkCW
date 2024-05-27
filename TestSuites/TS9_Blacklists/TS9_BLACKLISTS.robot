*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/BlacklistsPage.robot

*** Test Cases ***
Verifying Blacklists page
    [Documentation]    TC-1 Test the Blacklists page
    [Tags]             Sanity
    Login to the application and search customer name
    sleep    5s
    Scroll menu bar down
    sleep    2s
    Click Blacklists Link
    sleep    5s
    location should contain    blacklists
#    [Teardown]    Close Browser
