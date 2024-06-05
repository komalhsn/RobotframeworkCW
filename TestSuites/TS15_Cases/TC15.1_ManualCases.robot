*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../../Resources/CommonKeywords/GenralKeywords.robot
Resource    ../../Resources/Keywords/CasesPage.robot

*** Test Cases ***
Verify Export button
    [Documentation]    TC-1 Test Export feature
    [Tags]             Sanity
    Open Browser and Login
    sleep    5s
    Click on Cases on LHS in features list of dashboard
    sleep    5s
    Click on Export button

Verify if user can cancele creating Manual Cases
    [Documentation]    TC-2 Test if user can cancele creating Manual Cases
    [Tags]             Sanity
    Click on Case cration button
    sleep   5s
    Click on Search for party to create a case
    Click on Select Case Type
    Enter Case Summary
    sleep    5s
    Enter Case Description
    Click on Cancel button

Verify if user can create Manual Cases
    [Documentation]    TC- 3 Test if user can create Manual Cases
    [Tags]             Sanity
    Click on Case cration button
    sleep   5s
    Click on Search for party to create a case
    Click on Select Case Type
    Enter Case Summary
    sleep    5s
    Enter Case Description
    Click on create button
    sleep    5s

Verify if user can cancel case edit
    [Documentation]    TC-4 Test if user can cancel case edit
    [Tags]    Sanity
    Click on case id and navigate to case
    Click on edit button
    Clear old case description
    Enter new case description
    Click on Edit Cancel button

Verify if user can edit case
    [Documentation]    TC-5 Test if user can edit case
    [Tags]    Sanity
    Click on edit button
    Clear old case description
    Enter new case description
    Click on Update button

#Verify if user can cancel posting the comment
#    [Documentation]    TC-6 Test if user can cancel posting the comment
#    [Tags]    Sanity
#    Click on Add a comment
#    Click on comment cancel button

Verify if user can post the comment
    [Documentation]    TC-7 Test if user can post the comment
    [Tags]    Sanity
    Click on Add a comment
    Click on Comment Post button
