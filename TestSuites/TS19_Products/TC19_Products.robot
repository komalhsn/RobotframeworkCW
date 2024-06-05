*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/ProductsPage.robot


*** Test Cases ***
Verify user can navigate to products page
    [Documentation]    TC-1 Test if user can click on products and navigate to portfolios page
    [Tags]             Sanity
    Open Browser and Login
    sleep    5s
    Click on Products on LHS in features list of dashboard
    location should contain     products