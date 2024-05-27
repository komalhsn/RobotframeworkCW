*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${HIGHLIGHTS LINK}      //a[text()='Highlights']
${HIGHLIGHTS_TABLE}     //table[@class='table table-sm mb-0 table-xs table-striped']
${Business_Activity}    //table[@class='table table-sm mb-0 table-bordered table-striped']
${AlertCountTab}    //div[contains(text(),'Alerts Count')]
${Cases_Tab}    //div[contains(text(),'Cases Open')]
${ProductsOrder_Tab}    //div[contains(text(),'Products Ordered')]
${AlertsPage}   //h3[contains(text(),'Alerts')]
${CasePage}     //h3[contains(text(),'Cases')]
${ProductsPage}     //h3[contains(text(),'Products')]


*** Keywords ***
Click Highlights Link
    [Documentation]    Clicks on the highlights link
    Click Link    ${HIGHLIGHTS LINK}

Log Highlights table data to console
    [Documentation]    Log Highlights table data to the console
    ${table_data}=    get text    ${HIGHLIGHTS_TABLE}
    log to console    Table Data: ${table_data}

Log Business Activity of the company on console
    [Documentation]    Log Business Activity of the company on console
    ${BA_table_data}=   get text    ${Business_Activity}
    sleep    5s
    log to console    Business Activity Data:   ${BA_table_data}

Verify Alert Count tab
    [Documentation]    Click on Alert Count tab and page should navigate to Alert Page of the searched Party
    sleep    5s
    click element    //div[contains(text(),'Order Reports')]
    click element   ${AlertCountTab}

Verify Cases Tab
    [Documentation]    Click on Cases tab and page should navigate to cases page of the searched party
    sleep    5s
    Scroll Element Into View    ${Cases_Tab}
    click element    ${Cases_Tab}

Verify Products Order tab
    [Documentation]    Click on Products Order tab page should navigate to products page
    sleep    5s
    click element    //div[contains(text(),'Order Reports')]
    click element    ${ProductsOrder_Tab}