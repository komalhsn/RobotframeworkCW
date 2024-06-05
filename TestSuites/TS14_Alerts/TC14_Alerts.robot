*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/AlertsPage.robot
#Resource    ../../Resources/Keywords/CasesPage.robot

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

Verify if user can cancle the creation of cases from alert details pop-up
    [Documentation]    TC-3 Test if user can cancle the creation of cases from alert details pop-up
    [Tags]             Sanity
    Click on create button to create manual case from alert details pop-up
    sleep    10s
    Select Case Type
    sleep    5s
    Enter Case Description
    sleep    5s
    Scroll Down
    Click on Close button

Verify if user can create the cases from alert details pop-up
    [Documentation]    TC-4 Test if user can create the cases or view the case from alert details pop-up
    [Tags]             Sanity
    sleep    5s
    TRY
        Click on create button to create manual case from alert details pop-up
        sleep    10s
        Select Case Type
        sleep    5s
        Enter Case Description
        sleep    5s
        Scroll Down
        Click on create button

    ELSE
        Click on View Button

    END



