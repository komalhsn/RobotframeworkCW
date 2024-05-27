*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${Timelines LINK}      //a[text()='Timelines']



*** Keywords ***
Click Timelines Link
    [Documentation]    Clicks on the Timelines link
    Click Link    ${Timelines LINK}

