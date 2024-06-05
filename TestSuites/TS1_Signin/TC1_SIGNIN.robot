*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Resource    ../../Resources/Keywords/SignINPage.robot

*** Test Cases ***
#Signin Test Using CSV
#    [Documentation]    Test the sign-in page using usernames and passwords from a CSV file
#    Open Browser    ${URL}    ${BROWSER}
#    maximize browser window
#    Click Login Button
#    sleep    2s
#    ${data}=    read csv file to associative    ${SIGNIN_CSVFile}
#    FOR    ${row}    IN    @{data}
#        Signin With Credentials    ${row}[username]    ${row}[password]
#    END
#    ${title}=   get title
#    log to console    ${title}
#    Should Be Equal    ${title}    App - Crediwatch
#    [Teardown]    Close Browser


SignIn With Invalid Username and Invalid Password From CSV
    [Documentation]    TC-1 Test the sign-in page using Invalid Username and Invalid Password From CSV
    [Tags]             Sanity
    Open Browser    ${URL}    ${BROWSER}
    maximize browser window
    Click Login Button
    sleep    2s
    signin with invalid username and invalid password from csv
    Click Signin Button
    ${title}=   get title
    log to console    ${title}
    should not be equal       ${title}    App - Crediwatch

SignIn With Only Valid Password From CSV
    [Documentation]    TC-2 Test the sign-in page using Only Valid Password From CSV
    [Tags]             Sanity
    SignIn With Only Valid Password From CSV
    Click Signin Button
    ${title}=   get title
    log to console    ${title}
    should not be equal       ${title}    App - Crediwatch

SignIn With Only Valid Username From CSV
    [Documentation]    TC-3 Test the sign-in page using Only Valid Username From CSV
    [Tags]             Sanity
    SignIn With Only Valid Username From CSV
    Click Signin Button
    ${title}=   get title
    log to console    ${title}
    should not be equal       ${title}    App - Crediwatch

SignIn With Valid Username and Invalid Password From CSV
    [Documentation]    TC-4 Test the sign-in page using Valid Username and Invalid Password From CSV
    [Tags]             Sanity
    SignIn With Valid Username and Invalid Password From CSV
    Click Signin Button
    ${title}=   get title
    log to console    ${title}
    should not be equal       ${title}    App - Crediwatch

SignIn With Invalid Username and Valid Password From CSV
    [Documentation]     TC-5 Test the sign-in page using Invalid Username and Valid Password From CSV
    [Tags]             Sanity
    SignIn With Invalid Username and Valid Password From CSV
    Click Signin Button
    ${title}=   get title
    log to console    ${title}
    should not be equal       ${title}    App - Crediwatch

SignIn With blank Username and blank Password From CSV
    [Documentation]     TC-6 Test the sign-in page using blank Username and blank Password From CSV
    [Tags]             Sanity
    SignIn With blank Username and blank Password From CSV
    Click Signin Button
    ${title}=   get title
    log to console    ${title}
    should not be equal       ${title}    App - Crediwatch


SignIn With Valid Username and Valid Password From CSV
    [Documentation]     TC-7 Test the sign-in page using Valid Username and Valid Password From CSV
    [Tags]             Sanity
    SignIn With Valid Username and Valid Password From CSV
    Click Signin Button
    Sleep   3s
    ${title}=   get title
    log to console    ${title}
    Should Be Equal    ${title}    App - Crediwatch
#    [Teardown]    Close Browser