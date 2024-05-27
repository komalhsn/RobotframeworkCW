*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections

*** Variables ***
${Products}     //a[text()='Products']


*** Keywords ***

Click on Products on LHS in features list of dashboard
    [Documentation]    Click on Parties on LHS in features list of dashboard
    click link    ${Products}
    sleep    5s

