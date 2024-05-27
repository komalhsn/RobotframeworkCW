*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${GSTN_Info LINK}      //a[text()='GSTN Info']
${GSTNInfoData}     //div[@class='tab-pane active']


*** Keywords ***
Click GSTN Info Link
    [Documentation]    Clicks on the GSTN Info link
    Click Link    ${GSTN_Info LINK}
    sleep    10s

Log GSTN Info data on console
    ${gstninfo_data}=   get element attribute    ${GSTNInfoData}
    log to console    GST INFO Data:    ${gstninfo_data}