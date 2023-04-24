*** Settings ***
Documentation    US 3: As the Clerk, I should be able to upload a csv file to a portal so that I can populate the database from a UI
Resource         Common.robot
Resource         ../page-objects/HomePage.robot

Test Setup       Open The Oppenheimer Project UI
Test Teardown    Close Browser


*** Test Cases ***
Verify that a clerk can upload a working class hero CSV file to the portal
    [Documentation]    Uploading a Working Class Hero CSV file via UI
    [Tags]             happy-path
    
    Upload A CSV File work_class_heros.csv
    Sleep    5s
    # File uploading function is not working and CSV file is not uploading after selecting the file. Reported a bug.