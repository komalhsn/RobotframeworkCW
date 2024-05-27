*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
#Suite Setup    Open Browser and Login
#Suite Teardown    Close Browser
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/RelationshipsPage.robot


*** Test Cases ***
Verifying Signatories in Relationships page
    [Documentation]    TC-1 Test the Signatories in Relationships page
    [Tags]             Sanity
    Login to the application and search customer name
#    Search Party
    Click Relationships Link
    sleep    5s
    Log Active Signatories table data to console
    mouse over    ${Inactive_Signatories}
    sleep    3s
    Click on Inactive button
    Log InActive Signatories table data to console
#    [Teardown]    Close Browser

Verifying Auditors in Relationships page
    [Documentation]    TC-2 Test Auditors in Relationships page
    [Tags]             Sanity
    Click on Auditos Tab
    sleep    5s

Verifying Promoter Shareholding in Shareholding in Relationships page
    [Documentation]    TC-3 Test Promoter Shareholding in Shareholding in Relationships page
    [Tags]             Sanity
    Click on Shareholding Tab
    sleep    5s

Verifying Non Promoter Shareholding in Shareholding in Relationships page
    [Documentation]    TC-4 Test Non Promoter Shareholding in Shareholding in Relationships page
    [Tags]             Sanity
    Click on Non Promoter Shareholding Tab
    sleep    5s

Verifying KMP Shareholding in Shareholding in Relationships page
    [Documentation]    TC-5 Test KMP Shareholding in Shareholding in Relationships page
    [Tags]             Sanity
    Click on KMP Shareholding Tab
    sleep    5s


Verifying Group structure in Relationships page
    [Documentation]    TC-6 Test Group structure in Relationships page
    [Tags]             Sanity
    Click on Group structure Tab
    sleep    5s
#    [Teardown]    Close Browser
