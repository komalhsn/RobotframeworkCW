*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${EPFO LINK}    //a[text()='EPFO']

*** Keywords ***
Click EPFO Link
    [Documentation]    Clicks on the EPFO link
    Click Link    ${EPFO LINK}

