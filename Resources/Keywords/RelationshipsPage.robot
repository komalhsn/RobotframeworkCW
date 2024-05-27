*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${Relationship LINK}      //a[text()='Relationships']
${ActiveSignatories_TABLE}     //div[@class='w-100 overflow-auto']
${Inactive_Signatories}     //button[text()='INACTIVE']
${Inactive_Signatories_TABLE}   //table[@class='table table-sm table-bordered table-striped ']
${Auditors}      //div[text()='Auditors']
${Auditors_Table}        //div[@class='mb-3 card']
${Shareholding}     //div[text()='Shareholding']
${Table_Data}     //div[@class='container-fluid']
${NonPromoterShareholding}        //div[contains(text(),'Non Promoter Shareholding')]
${KMP_Shareholding}     //div[contains(text(),'KMP Shareholding')]
${Group_Structure}      //div[contains(text(),'Group structure')]
${Group_Structure_Table}    //table[@class='table table-sm table-bordered table-striped ']


*** Keywords ***
Click Relationships Link
    [Documentation]    Clicks on the Relationships link
    Click Link    ${Relationship LINK}

Log Active Signatories table data to console
    [Documentation]    Log Active Signatories table data to the console
    ${active_table_data}=    get text    ${ActiveSignatories_TABLE}
    log to console    ActiveTable Data: ${active_table_data}

Click on Inactive button
    [Documentation]    Click on Inactive button to view InActive Signatories
#    Scroll Element Into View    ${Inactive_Signatories}
    click element    //div[contains(text(),'Order Reports')]
    click button    ${Inactive_Signatories}
    sleep    10s

Log InActive Signatories table data to console
    [Documentation]    Log InActive Signatories table data to console
    ${inactive_table_data}=     get text    ${Inactive_Signatories_TABLE}
    log to console    InActveTable Data:     ${inactive_table_data}

Click on Auditos Tab
    click element    ${Auditors}
    ${auditors_table_data}=     get text    ${Auditors_Table}
    log to console    AuditorsTable_Data:      ${auditors_table_data}

Click on Shareholding Tab
    click element    ${Shareholding}
    ${promoter_shareholding}=   get text    ${Table_Data}
    log to console    PromoterShareholding_Data:    ${promoter_shareholding}

Click on Non Promoter Shareholding Tab
    click element    ${NonPromoterShareholding}
    ${non_promoter_shareholding}=   get text    ${TABLE_DATA}
    log to console    NonPromoterShareholding_Data:     ${non_promoter_shareholding}


Click on KMP Shareholding Tab
    click element    ${KMP_Shareholding}
    ${kmp_shareholding}=    get text    ${TABLE_DATA}
    log to console    KMP_Shareholding_Data:    ${kmp_shareholding}

Click on Group structure Tab
    click element    ${Group_Structure}
    ${group_structure}=     get text    ${Group_Structure_Table}
    log to console    Group_StructureData:  ${group_structure}



