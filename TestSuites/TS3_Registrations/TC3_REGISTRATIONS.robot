*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
#Suite Setup    Open Browser and Login
#Suite Teardown    Close Browser
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/RegistrationsPage.robot


*** Test Cases ***
Verifying Registrations page
    [Documentation]    TC-1 Test the Registrations page 
    [Tags]             Sanity
    Login to the application and search customer name
#    Search Party
    Click Registrations Link
    sleep    2s
    Log Registrations table data to console
    sleep    10s
    location should contain    registrations
#    [Teardown]    Close Browser
