*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/PortfoliosPage.robot

*** Test Cases ***
Verify user should not able to create the portfolio with the existsing portfolio name
    [Documentation]    TC-1 Test if user should not able to create the portfolio with the existsing portfolio name
    [Tags]    Sanity
    Open Browser and Login
    sleep    5s
    Click on Portfolios on LHS in features list of dashboard
    Click on create portfolio button
    Enter Portfolio Name and Description
    sleep    5s
    Click on Create Button
    sleep    5s
    Erorr message should dispaly
    sleep    2s
    Close pop-up

Verify that user can add parties to the newly created portfolio and cancle
    [Documentation]    TC-2 Test if user can add parties to the newly created portfolio and cancle
    [Tags]    Sanity
    Click on portfolio name
    Add parties to the portfolio
    Click on clear button
    Close pop-up

Verify that user can add parties to the newly created portfolio
    [Documentation]    TC-3 Test if user can add parties to the newly created portfolio
    [Tags]    Sanity
    TRY

#    Click on portfolio name
        Add parties to the portfolio
        Click on Add button
    FINALLY
        Close pop-up

    END

Verify if user can click on Alert Tab to view alert details
    [Documentation]    TC-4 Test if user can click on Alert Tab to view alert details
    [Tags]  Sanity
    Click on Alert Tab
    location should contain    alerts
