*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/Ratings.robot

*** Test Cases ***
Verify Ratings Page
    [Documentation]    TC-1 Test Ratings page
    [Tags]       Sanity
    Login to the application and search customer name
    sleep    20s
    Scroll menu bar down
    sleep    10s
    Click on Ratings Link
    location should contain    ratings

Validate if user is able to click on view icon to view Rating History
    [Documentation]    TC-2 Test if user is able to click on view icon to view Rating History
    [Tags]    Sanity
    Click on view icon

