*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections

*** Variables ***
${Parties}      //a[text()='Parties']
${ExportBtn}    //span[text()='Export']
${CollaboratorsIcon}    //body/div[@id='root']/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[2]/div[2]/div[1]/div[2]/div[1]/div[2]/button[1]/i[1]
${Collaborators}    //body/div[3]/div[1]/div[1]/div[1]/div[1]


*** Keywords ***

Click on Parties on LHS in features list of dashboard
    [Documentation]    Click on Parties on LHS in features list of dashboard
    click link    ${Parties}
    sleep    5s

Click on Export button
    click element    ${ExportBtn}

Click on collaborators icon and get the details
    mouse over    ${CollaboratorsIcon}
    click element    ${CollaboratorsIcon}
    ${collaborators_list}=  get text    ${Collaborators}
    log to console    List of collaborators:    ${collaborators_list}
    sleep    5s
    click element    xpath://span[contains(text(),'×')]
