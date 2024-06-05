*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/NEWSPage.robot
*** Test Cases ***
Verifying NEWS page
    [Documentation]    TC-1 Test the NEWS page
    [Tags]             Sanity
    Login to the application and search customer name
    Scroll menu bar down
    Click NEWS Link
    location should contain    news
    sleep    5s
#    [Teardown]    Close Browser
