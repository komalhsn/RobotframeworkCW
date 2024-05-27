*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${Registrations LINK}      //a[text()='Registrations']
${Registrations_TABLE}     //body/div[@id='root']/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]

*** Keywords ***
Click Registrations Link
    [Documentation]    Clicks on the Registrations link
    Click Link    ${Registrations LINK}

Log Registrations table data to console
    [Documentation]    Log Registrations table data to the console
    click element    //div[contains(text(),'Order Reports')]
    wait until element is visible    ${Registrations_TABLE}
    ${table_data}=    get text    ${Registrations_TABLE}
    log to console    Table Data: ${table_data}

