*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections

*** Variables ***
${BROWSER}      Chrome
${URL}    https://www.crediwatch.net/
${PARTIES_CSVFile}    Datafiles/parties.csv
${Login_Button}    //button[contains(text(),'Login')]
${Username}   (//input[@id='signInFormUsername'])[2]
${Password}   (//input[@id='signInFormPassword'])[2]
${Signin_Button}       (//input[@name='signInSubmitButton'])[2]
${username}     credibot.crediwatch.com
${password}     Credi!123
${SEARCH BAR}       //input[@id='searchText']
${SEARCHED ITEM}      (//div[@class='d-flex align-items-center'])[1]
${PAGE_TITLE}       //div[contains(text(),'Highlights')]

*** Keywords ***
Click Login Button
    [Documentation]    Clicks on the login button
    Click Button    ${LOGIN_BUTTON}

SignIn to the Application
    [Arguments]    ${username}    ${password}
    [Documentation]    Signs in using provided username and password
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}

Click Signin Button
    [Documentation]    Clicks on the signin button
    Click Button    ${Signin_Button}


Read Customer Name From CSV
    [Documentation]    Reads customer name from CSV file
    ${data}=    read csv file to associative    ${parties_csvfile}
    ${customer_name}=    Set Variable    ${data[0]['customername']}
    RETURN    ${customer_name}

Click Search Bar
    [Documentation]    Clicks on the search bar
    Click Element    ${SEARCH BAR}

Search For Customer
    [Arguments]    ${customer_name}
    [Documentation]    Searches for a customer by name
    Input Text    ${SEARCH BAR}    ${customer_name}
    Press Keys    ${SEARCH BAR}    ENTER

Click on Searched Customer name in search list
    [Documentation]    Click on Searched Customer name in search list
    Click Element    ${SEARCHED ITEM}


Move Mouse to Element
    [Arguments]    ${element}
    [Documentation]    Move the mouse cursor to the specified element
    Execute JavaScript    arguments[0].scrollIntoView(true);    ${element}

Open Browser and Login
    Open Browser    ${URL}    ${BROWSER}
    maximize browser window
    Click Login Button
    sleep    2s
    SignIn to the Application   credibot@ktkbank.com     Credi!123
    Click Signin Button
    set selenium implicit wait    4S

Close Browser
    Close Browser

Open Headless Browser
    [Arguments]    ${url}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    chrome_options=${options}
    Go To    ${URL}

#Search Party
#    Click Search Bar
#   ${customer_name}=    Read Customer Name From CSV
#    Input Text    ${SEARCH BAR}    ${customer_name}
#    Wait Until Element Is Visible    ${SEARCHED ITEM}
#    sleep    5s
#    Click on Searched Customer name in search list
#    sleep    5s

Login to the application and search customer name
    [Documentation]    Login to the application and search customer name
    Open Browser    ${URL}    ${BROWSER}
    maximize browser window
    Click Login Button
    sleep    2s
    SignIn to the Application   credibot@ktkbank.com     Credi!123
    Click Signin Button
    set selenium implicit wait    4S
    Click Search Bar
   ${customer_name}=    Read Customer Name From CSV
    Input Text    ${SEARCH BAR}    ${customer_name}
    Wait Until Element Is Visible    ${SEARCHED ITEM}
    sleep    5s
    Click on Searched Customer name in search list
    sleep    3s

Scroll Sidebar Down
    execute javascript    window.scrollTo(0,1500)

Scroll element into view
    [Arguments]    ${element}
    scroll element into view    ${element}

Scroll menu bar down
    mouse down    xpath://div[@class='ps__thumb-y']
    Press Keys    NONE    ‘\ue00f’
    Press Keys    NONE    PAGE_DOWN

Select From Dropdown
    [Arguments]    ${locator}    ${partial_label}
    ${options}    Get WebElements    ${locator}/option
    FOR    ${option}    IN    @{options}
        ${label}=    Get Text    ${option}
        Run Keyword If    '${partial_label}' in '${label}'    Select From List by Label    ${locator}    ${label}
    END