*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${BROWSER}      Chrome
${URL}    https://www.crediwatch.net/
${SIGNIN_CSVFile}    Datafiles/signin.csv
${Login_Button}    //button[contains(text(),'Login')]
${Username}   (//input[@id='signInFormUsername'])[2]
${Password}   (//input[@id='signInFormPassword'])[2]
${Signin_Button}       (//input[@name='signInSubmitButton'])[2]


*** Keywords ***
Click Login Button
    [Documentation]    Clicks on the login button
    Click Button    ${LOGIN_BUTTON}

Signin With Credentials
    [Arguments]    ${username}    ${password}
    [Documentation]    Signs in using provided username and password
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}
    Click Button    ${SIGNIN_BUTTON}

Click Signin Button
    [Documentation]    Clicks on the signin button
    Click Button    ${Signin_Button}

SignIn With Invalid Username and Invalid Password From CSV
    [Documentation]    SignIn With Invalid Username and Invalid Password From CSV
    ${credentials}=    read csv file to associative    ${SIGNIN_CSVFile}
    ${username}=    Set Variable    ${credentials[0]['username']}
    ${password}=    Set Variable    ${credentials[0]['password']}
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}

SignIn With Only Valid Password From CSV
    [Documentation]    SignIn With Only Valid Password From CSV
    ${credentials}=    read csv file to associative    ${SIGNIN_CSVFile}
    ${username}=    Set Variable    ${credentials[1]['username']}
    ${password}=    Set Variable    ${credentials[1]['password']}
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}

SignIn With Only Valid Username From CSV
    [Documentation]    SignIn With Only Valid Username From CSV
    ${credentials}=    read csv file to associative    ${SIGNIN_CSVFile}
    ${username}=    Set Variable    ${credentials[2]['username']}
    ${password}=    Set Variable    ${credentials[2]['password']}
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}

SignIn With Valid Username and Invalid Password From CSV
    [Documentation]    SignIn With Valid Username and Invalid Password From CSV
    ${credentials}=    read csv file to associative    ${SIGNIN_CSVFile}
    ${username}=    Set Variable    ${credentials[3]['username']}
    ${password}=    Set Variable    ${credentials[3]['password']}
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}

SignIn With Invalid Username and Valid Password From CSV
    [Documentation]    SignIn With Invalid Username and Valid Password From CSV
    ${credentials}=    read csv file to associative    ${SIGNIN_CSVFile}
    ${username}=    Set Variable    ${credentials[4]['username']}
    ${password}=    Set Variable    ${credentials[4]['password']}
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}

SignIn With blank Username and blank Password From CSV
    [Documentation]    SignIn With blank Username and blank Password From CSV
    ${credentials}=    read csv file to associative    ${SIGNIN_CSVFile}
    ${username}=    Set Variable    ${credentials[5]['username']}
    ${password}=    Set Variable    ${credentials[5]['password']}
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}

SignIn With Valid Username and Valid Password From CSV
    [Documentation]    SignIn With Valid Username and Valid Password From CSV
    ${credentials}=    read csv file to associative    ${SIGNIN_CSVFile}
    ${username}=    Set Variable    ${credentials[6]['username']}
    ${password}=    Set Variable    ${credentials[6]['password']}
    Input Text    (//input[@id='signInFormUsername'])[2]    ${username}
    Input Text    (//input[@id='signInFormPassword'])[2]    ${password}