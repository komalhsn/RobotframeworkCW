*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/FinancialsPage.robot


*** Test Cases ***
Verifying Profit and Loss in Financials page
    [Documentation]    TC-1 Test the Profit and Loss in Financials page
    [Tags]             Sanity
    Login to the application and search customer name
    Click Financials Link
    sleep    5s
    Log Profit & Loss table data to console
    sleep    5s
#    Click on Download CSV button


Verifying Balance Sheet in Financials page
    [Documentation]    TC-2 Test the Balance Sheet in Financials page
    [Tags]             Sanity
    Click on Balancesheet Tab
    sleep   3s
    Log Balance Sheet table data to console
#    Click on Download CSV button

Verify Ratios in Financials Page
    [Documentation]    TC-3 Test the Ratios in Financials Page
    [Tags]             Sanity
    Click on Ratios Tab
    sleep    3s
    Log Ratios table data to console
#    Click on Download CSV button

Verify Standalone Quarterly in Financials Page
    [Documentation]    TC-4 Test the Standalone Quarterly in Financials Page
    [Tags]             Sanity
    Click on Quarterly Tab
    Log Standalone Quarterly table data to console
#    Click on Download CSV button

Verify Consolidated Quarterly in Financials Page
    [Documentation]    TC-5 Test the Consolidated Quarterly in Financials Page
    [Tags]             Sanity
    Click on Consolidated Button
    Log Consolidated Quarterly table data to console
#    Click on Download CSV button
#    [Teardown]    Close Browser