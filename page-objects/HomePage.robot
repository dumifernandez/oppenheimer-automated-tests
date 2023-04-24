*** Settings ***
Library     SeleniumLibrary
Resource    locators/HomePageLocators.robot


*** Keywords ***
Upload A CSV File ${fileName}
    Choose File    ${BROWSE_BUTTON}    ${EXECDIR}/resources/${fileName}


Scroll To Dispense Now Button
    Scroll Element Into View    ${DISPENS_NOW_BUTTON}


Click On The Dispense Now Button
    Scroll To Dispense Now Button
    Click Element    ${DISPENS_NOW_BUTTON}


Dispense Now Button Color Should Be Red
    Scroll To Dispense Now Button
    ${DISPENS_NOW_BUTTON_CSS}=  Get Element Attribute  ${DISPENS_NOW_BUTTON}    class
    Should Contain  ${DISPENS_NOW_BUTTON_CSS}    btn-danger   
    Log To Console    Button Color Validation Success!


Dispense Now Button Text Should Be Dispense Now
    Scroll To Dispense Now Button
    ${DISPENS_NOW_BUTTON_TEXT}=  Get Text  ${DISPENS_NOW_BUTTON}
    Should Be Equal As Strings  ${DISPENS_NOW_BUTTON_TEXT}    Dispense Now
    Log To Console    Button Text Validation Success!


Cash Dispensed Button Text Should Be Cash dispensed
    Wait Until Page Contains Element    ${CASH_DISPENSED_LABEL}
    ${CASH_DISPENSED_BUTTON_TEXT}=  Get Text  ${CASH_DISPENSED_LABEL}
    Should Be Equal As Strings  ${CASH_DISPENSED_BUTTON_TEXT}    Cash dispensed
    Log To Console    Directed to the Cash Dispensed Page Successfully!