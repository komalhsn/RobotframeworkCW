*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/PartiesPage.robot

*** Test Cases ***
Verify user can navigate to parties page
    [Documentation]    TC-1 Test if user can click on parties and navigate to parties page
    [Tags]             Sanity
    Open Browser and Login
    sleep    5s
    Click on Parties on LHS in features list of dashboard
    location should contain    parties

Verify collaborators role for the party
    [Documentation]    TC-2 Test collaborators role for the party
    [Tags]             Sanity
    Click on collaborators icon and get the details

Verify Export button
    [Documentation]    TC-3 Test Export button
    [Tags]             Sanity
    Click on Export button
#    [Teardown]    Close Browser