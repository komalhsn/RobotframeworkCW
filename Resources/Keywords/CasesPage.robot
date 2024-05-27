*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections

*** Variables ***
${Case_Link}    //a[text()='Cases']
${CreatCaseBtn}     //button[text()='CREATE CASE']
${SearchParty}      //body/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/input[1]
${PartyName}    Infosys
${CaseType}      //body/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]
${CaseTypeList}     //div[@class=' css-26l3qy-menu']//*[@class=' css-yt9ioa-option']
${CaseDesp}     //body[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[6]/div[2]/div[1]/p[1]
${CaseSummry}   //input[@name='Case Summary']
${CreateBtn}    //button[contains(text(),'Create')]
${Cases}    //a[text()='Cases']
${SearchedParty}    //body/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/ul[1]/li[1]/div[1]
${PARTIES_CSVFile}    Datafiles/parties.csv
${CancelBtn}    //button[contains(text(),'Close')]
${EditCase}     //button[text()='Edit']
${EditedDescrp}     //body/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]

*** Keywords ***
Click on Cases
    [Documentation]    Click on Cases
    click link    ${Case_Link}

Click on Cases on LHS in features list of dashboard
    [Documentation]    Click on Cases on LHS in features list of dashboard
    click link    ${Cases}


Click on Case cration button
    [Documentation]    Click on Case cration button to create manual case
    click button    ${creatcasebtn}


Click on Search for party to create a case
    [Documentation]    Search for party for which the case has to be crated
    click element    ${SearchParty}
    Input Text    ${SearchParty}    ${PartyName}
#    Press Keys    ${SearchParty}    ENTER
    sleep    4s
    click element    xpath://li[@id='react-autowhatever-1--item-0']

Click on Export button
    click element    //span[text()='Export']


Click on Select Case Type
    [Documentation]    Click on Select Case Type
    click element    ${CaseType}
    sleep   5s
    click element    ${CaseTypeList}


Enter Case Summary
    [Documentation]    Enter Case Summary
    input text    ${CaseSummry}     Automation Case Summary


Enter Case Description
    [Documentation]    Enter Case Description
    sleep    5s
    input text    ${CaseDesp}       Automation Case Description Testing

Click on create button
    click button    ${CreateBtn}

Click on Cancel button
    click button    ${CancelBtn}

Click on edit button
    click button    ${EditCase}

Clear old case description
    clear element text    ${EditedDescrp}

Enter new case description
    input text    ${EditedDescrp}   Edited Automation Case Description Testing
