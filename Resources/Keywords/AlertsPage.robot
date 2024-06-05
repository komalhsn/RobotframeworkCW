*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${Alerts_Link}      //a[text()='Alerts']
${AlertDetailsBtn}      //button[text()='Details']
${AlertDetails}     //div[@class='modal-content']
${CreateBtn}        //button[text()='Create']
${CaseType}      //body/div[4]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]
${CaseTypeList}     //div[@class=' css-26l3qy-menu']//*[@class=' css-yt9ioa-option']
${CaseDesp}        //body[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[6]/div[2]/div[1]/p[1]
${CloseBtn}        (//button[contains(text(),'Close')])[2]
${CaseCreate_Btn}       (//button[contains(text(),'Create')])[2]
${View}     //button[contains(text(),'view')]
*** Keywords ***
Click on Alerts
    [Documentation]    Click on Alerts
    click link    ${Alerts_Link}

Click on Details button
    [Documentation]    Click on Alert details button to verify alert details
    click button    ${AlertDetailsBtn}
    sleep    5s
    ${alert_details}=   get text   ${AlertDetails}
    log to console    ${alert_details}
#    click element    //button[contains(text(),'Close')]

Click on create button to create manual case from alert details pop-up
    [Documentation]    Create manual case from alert details page by clicking on create button
    click button    ${createbtn}

Select Case Type
    [Documentation]    Select Case Type
    sleep   5s
    click element    ${CaseType}
    sleep   5s
    click element    ${CaseTypeList}


Enter Case Description
    [Documentation]    Enter Case Description
    sleep    5s
    input text    ${CaseDesp}       Automation Case Description Testing   - Alert PAge

Click on create button
    click button    ${CaseCreate_Btn}

Click on Close button
    click button    ${CloseBtn}

Click on View Button
    click button    ${View}