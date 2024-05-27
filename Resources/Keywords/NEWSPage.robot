*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${NEWS LINK}      //a[text()='News']



*** Keywords ***
Click NEWS Link
    [Documentation]    Clicks on the NEWS link
    Click Link    ${NEWS LINK}

