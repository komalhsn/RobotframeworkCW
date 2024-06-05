*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/TimelinesPage.robot

*** Test Cases ***
Verifying Timelines page
    [Documentation]    TC-1 Test the Timelines page
    [Tags]             Sanity
    Login to the application and search customer name
    Click Timelines Link
    sleep    5s
    location should contain    timelines
#    [Teardown]    Close Browser
