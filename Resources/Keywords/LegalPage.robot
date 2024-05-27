*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${Legal LINK}      //a[text()='Legal']



*** Keywords ***
Click Legal Link
    [Documentation]    Clicks on the Legal link
    Click Link    ${Legal LINK}

