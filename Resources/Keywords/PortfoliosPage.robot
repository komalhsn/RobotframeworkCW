*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections

*** Variables ***
${Portfolios}    //a[text()='Portfolios']
${CollaboratorsIcon}    //body/div[@id='root']/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[1]/div[1]/div[1]/div[3]/i[1]
${Collaborators}    //body/div[@id='root']/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[1]/div[1]/div[1]/div[3]/i[1]
${CreatePortfolioBtn}   //button[contains(text(),'Create Portfolio')]
${PortfolioName}     //input[@id='name']
${PortfolioDescription}       //textarea[@id='description']
${CreateBtn}    //body/div[3]/div[1]/div[1]/div[1]/div[1]/div[3]/button[2]
${CancelBtn}    //button[contains(text(),'Cancel')]
${PortfolioLink}    //a[contains(text(),'Automation Test Portfolio')]
${AddPartyBtn}     //button[text()=' Add Party']
${SearchParty}      //body/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/input[1]
${AddBtn}       //body/div[3]/div[1]/div[1]/div[1]/div[1]/div[3]/button[2]
@{PartyName}    wipro   TATA    Reliance
${ClearBtn}     //body/div[3]/div[1]/div[1]/div[1]/div[1]/div[3]/button[1]
${SearhPortfoliofilters}      //input[@placeholder='Search By Portfolio']
${FilterApplyBtn}     //button[contains(text(),'Apply')]
${FilterClearBtn}   //button[contains(text(),'Clear')]
@{PortfolioFilter}      Automation  test    demo
${ErrorMsg}     xpath://body/div[@id='root']/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]
${Subtitle}     //small[@class='menu-header-subtitle d-none d-md-block']
${AlertTab}     //div[contains(text(),'Alerts')]

*** Keywords ***
Click on Portfolios on LHS in features list of dashboard
    [Documentation]    Click on Parties on LHS in features list of dashboard
    click link    ${Portfolios}
    sleep    5s

Click on collaborators icon and get the details
    mouse over    ${CollaboratorsIcon}
    click element    ${CollaboratorsIcon}
    ${collaborators_list}=  get text    ${Collaborators}
    log to console    List of collaborators:    ${collaborators_list}
    sleep    5s
    click element    xpath://span[contains(text(),'×')]

Click on create portfolio button
    click button    ${CreatePortfolioBtn}

Enter Portfolio Name and Description
    click element   ${PortfolioName}
    sleep    2s
    click element    ${PortfolioName}
    sleep    2s
    input text    ${PortfolioName}    Automation Test Portfolio
    sleep    2s
    click element    ${PortfolioDescription}
    sleep    2s
    input text    ${PortfolioDescription}       Automation Test Description

Click on Create Button
    click button    ${CreateBtn}

Click on Cancel Button
    click button    ${CancelBtn}

Erorr message should dispaly
    page should contain element    xpath://body/div[@id='root']/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]

Close pop-up
    click element    xpath://span[contains(text(),'×')]

Click on portfolio name
    wait until element is visible    ${PortfolioLink}
    click element    ${PortfolioLink}

Add parties to the portfolio
    click button    ${AddPartyBtn}
    click element   ${SearchParty}
    FOR    ${PartyName}    IN    @{PartyName}
        Input Text    ${SearchParty}    ${PartyName}
        Sleep    10s    # Optional: Add sleep if needed to see the input or wait for the field to be ready
        click element    xpath://li[@id='react-autowhatever-1--item-0']

    END

Click on clear button
    click button    ${ClearBtn}

Click on Add button
    click button    ${AddBtn}

Click on filters
    click element    ${SearhPortfoliofilters}
    sleep    5s
    FOR    ${filters}   IN  @{PortfolioFilter}
        input text    ${SearhPortfoliofilters}    ${filters}
        click button    ${FilterClearBtn}
        sleep    5s
        input text    ${SearhPortfoliofilters}    ${filters}
        sleep    5s
        click button    ${FilterApplyBtn}
    END


Click on All Portfolios Preset filters
    click element    //span[contains(text(),'All portfolios')]
    LOG    ${Subtitle}

Click on Owned By Me Portfolio Preset filters
    click element    //span[contains(text(),'Owned By Me')]
    LOG    ${Subtitle}

Click on Alert Tab
    click element    ${AlertTab}
