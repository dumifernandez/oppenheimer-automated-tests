*** Settings ***
Documentation    US 5: As the Governor, I should be able to see a button on the screen so that I can dispense tax relief for my working class heroes
Resource         Common.robot
Resource         ../page-objects/HomePage.robot

Test Setup       Open The Oppenheimer Project UI
Test Teardown    Close Browser


*** Test Cases ***
Verify that the Dispense Now button color shows in red color
    [Documentation]    Validating the Dispense Now button color
    [Tags]             happy-path

    Dispense Now Button Color Should Be Red


Verify that the Dispense Now button text is exactly shows as Dispense Now”
    [Documentation]    Validating the Dispense Now button text
    [Tags]             happy-path

    Dispense Now Button Text Should Be Dispense Now


Verify that after clicking on the Dispense Now button, it should direct to a page with a text that says “Cash dispensed”
    [Documentation]    Validating the Dispense Now button click
    [Tags]             happy-path
    
    Click On The Dispense Now Button
    Cash Dispensed Button Text Should Be Cash dispensed