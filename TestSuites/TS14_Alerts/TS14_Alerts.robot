*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/AlertsPage.robot
Resource    ../../Resources/Keywords/CasesPage.robot

*** Test Cases ***
Verify Alert Page
    [Documentation]    TC-1 Test Alerts Page
    [Tags]             Sanity
    Login to the application and search customer name
    Click on Alerts
    location should contain    alerts

Verify Alert details
    [Documentation]    TC-2 Test Alert Details page
    [Tags]             Sanity
    Click on Details button
#    [Teardown]    Close Browser
#Verify if user can canele the creation of cases from alert details pop-up
#    [Documentation]    TC-3 Test manual case from alert details pop-up
#    Click on create button to create manual case from alert details pop-up
#    sleep    5s
#    Click on Select Case Type
#    sleep    5s
#    Enter Case Description
#    sleep    5s
#    Click on Cancel button
#
#Verify if user can create the cases from alert details pop-up
#    [Documentation]    TC-4 Test if user can create the cases from alert details pop-up
#    Click on create button to create manual case from alert details pop-up
#    sleep    5s
#    Click on Select Case Type
#    sleep    5s
#    Enter Case Description
#    sleep    5s
#    Click on create button

