*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections

*** Variables ***
${Ratings_Link}     //a[text()='Ratings']
${View}     //div[@class='cursor-pointer']

*** Keywords ***
Click on Ratings Link
    [Documentation]    Click on Ratings Link
    click link    ${Ratings_Link}
    sleep    15s


Click on view icon
    click element    ${View}