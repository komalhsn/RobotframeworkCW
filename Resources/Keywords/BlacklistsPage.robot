*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${Blacklists LINK}      //a[text()='Blacklists']



*** Keywords ***
Click Blacklists Link
    [Documentation]    Clicks on the Blacklists link
    Click Link    ${Blacklists LINK}

