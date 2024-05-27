*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/PortfoliosPage.robot

*** Test Cases ***
Verify user can navigate to portfolios page
    [Documentation]    TC-1 Test if user can click on portfolios and navigate to portfolios page
    [Tags]        Sanity
    Open Browser and Login
    sleep    5s
    Click on Portfolios on LHS in features list of dashboard
    location should contain     portfolios


Verify if user can view the portfolio collaborators
    [Documentation]    TC-2 Test if user can view the portfolio collaborators
    [Tags]    Sanity
    Click on collaborators icon and get the details

Verify user can cancel while creating a portfolio
    [Documentation]    TC-3 Test if user can cancel while creating a portfolio
    [Tags]        Sanity
    Click on create portfolio button
    sleep    5s
    Enter Portfolio Name and Description
    sleep    5s
    Click on Cancel Button

Verify user can create portfolio
    [Documentation]    TC-4 Test if user can create portfolio
    [Tags]             Sanity
    Click on create portfolio button
    Enter Portfolio Name and Description
    sleep    5s
    Click on Create Button
    sleep    5s




