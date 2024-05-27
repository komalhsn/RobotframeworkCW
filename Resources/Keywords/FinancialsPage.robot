*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${Financials LINK}      //a[text()='Financials']
${TABLE_Data}     //div[@class='table-responsive']
${BalanceSheet}     //div[contains(text(),'Balance Sheet')]
${Ratios}   //div[contains(text(),'Ratios')]
${Quarterly}     //div[contains(text(),'Quarterly')]
${DownloadCSV}     //small[contains(text(),'DOWNLOAD CSV')]
${ConsolidatedButton}  //button[contains(text(),'Consolidated')]


*** Keywords ***
Click Financials Link
    [Documentation]    Clicks on the Financials link
    Click Link    ${Financials LINK}

Log Profit & Loss table data to console
    [Documentation]    Log Profit & Loss table data to the console
    ${Profit_&_Loss_table_data}=    get text    ${TABLE_Data}
    log to console    Table Data: ${Profit_&_Loss_table_data}

Click on Balancesheet Tab
    [Documentation]    Click on Balancesheet Tab to view balancesheet
    click element    ${balancesheet}

Log Balance Sheet table data to console
    [Documentation]    Log Balance Sheet table data to the console
    ${BalanceSheet_table_data}=    get text    ${TABLE_Data}
    log to console    Table Data: ${BalanceSheet_table_data}


Click on Ratios Tab
    [Documentation]    Click on Ratios Tab
    click element    ${Ratios}
    sleep    5s

Log Ratios table data to console
    [Documentation]    Log Ratios table data to the console
    ${Ratios_table_data}=    get text    ${TABLE_Data}
    log to console    Table Data: ${Ratios_table_data}
    sleep    5s


Click on Download CSV button
    click button    ${DownloadCSV}

Click on Quarterly Tab
    click element    ${Quarterly}

Log Standalone Quarterly table data to console
    ${quarterly}=   get text    ${TABLE_Data}
    log to console    Standalone Quarterly table data:  ${quarterly}
    sleep    5s


Click on Consolidated Button
    click button    ${ConsolidatedButton}
    sleep    5s


Log Consolidated Quarterly table data to console
    ${consolidated_quarterly}=   get text    ${TABLE_Data}
    log to console    Standalone Quarterly table data:  ${consolidated_quarterly}
    sleep    5s
