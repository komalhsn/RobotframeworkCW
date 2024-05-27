*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
#Suite Setup    Open Browser and Login
#Suite Teardown    Close Browser
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/ChargesPage.robot

*** Test Cases ***
Verifying Charges page
    [Documentation]    TC-1 Test the Active Charges page
    [Tags]             Sanity
    Login to the application and search customer name
#    Search Party
    Click Charges Link
    sleep    5s
    location should contain    charges

#    [Teardown]    Close Browser

Verifying Satisfied Charges
    [Documentation]    TC-2 Test the Satisfied Charges
    [Tags]             Sanity
    sleep    2s
    Click on Satisfied Charges Tab
#    [Teardown]    Close Browser
