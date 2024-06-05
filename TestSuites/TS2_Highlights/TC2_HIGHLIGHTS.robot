*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/HighlightsPage.robot

*** Test Cases ***
Verifying Highlights page
    [Documentation]   TC-1 Test the highlights page by searchng customer name from a CSV file
    [Tags]             Sanity
    Login to the application and search customer name
#    Click Highlights Link
    Wait Until Element Is Visible       ${PAGE_TITLE}
    Log Highlights table data to console


Verify Business Activity table
    [Documentation]   TC-2 Test Business Activity table on highlights page
    [Tags]             Sanity
    Log Business Activity of the company on console

Verify Alert Count tab
    [Documentation]   TC-3 Click on Alert Count tab and page should navigate to Alert Page of the searched Party
    [Tags]             Sanity
    Click Alert Count tab Verify Navigation
    location should contain    alerts

Verify Cases Tab
    [Documentation]    TC-4 Click on Cases tab and page should navigate to cases page of the searched party
    [Tags]             Sanity
    sleep    3s
    Go Back
    Click Cases Tab And Verify Navigation
#    location should contain    cases

Verify Products Order tab
    [Documentation]    TC-5 Click on Products Order tab page should navigate to products page
    [Tags]             Sanity
#    Click Highlights Link
    sleep    3s
    go back
    Click Products Order tab And Verify Navigaton
    location should contain     products
#    [Teardown]    Close Browser