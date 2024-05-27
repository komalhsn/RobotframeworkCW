*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    String
Library    Collections


*** Variables ***
${Charges LINK}      //a[text()='Charges']
${SatisfiedCharges}     //a[contains(text(),'Satisfied Charges')]
${Charges_Button}   //div[@class='p-3 mb-5']

*** Keywords ***
Click Charges Link
    [Documentation]    Clicks on the Charges link
    Click Link    ${Charges LINK}
    sleep    2s
    ${actvie_charges}=     get text    ${Charges_Button}
    log to console    ${actvie_charges}

Click on Satisfied Charges Tab
    [Documentation]    Click on the Satisfied Charges Tab
    sleep    5s
    click element    ${SatisfiedCharges}
    ${satisfied_charges}=       get text    ${Charges_Button}
    log to console    ${satisfied_charges}

