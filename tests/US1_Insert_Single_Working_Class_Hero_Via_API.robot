*** Settings ***
Documentation    US 1: As the Clerk, I should be able to insert a single record of working class hero into database via an API
Library          RequestsLibrary
Resource         Common.robot


*** Variables ***
${POST_SESSION_NAME}    POST Single Working Class Hero Session


*** Test Cases ***
Verify that a clerk can insert a single working class hero via the API
    [Documentation]    Inserting a single record via API
    [Tags]             happy-path

    ${data}=          Convert A JSON File To A JSON String Insert_single_work_class_hero.json
    ${headers}=       Create Dictionary   ${CONTENT_TYPE_HEADER_NAME}=${CONTENT_TYPE_HEADER_VALUE}
    Create Session    ${POST_SESSION_NAME}    ${BASE_URL}
    ${response}=      POST On Session    ${POST_SESSION_NAME}    calculator/insert    data=${data}    headers=${headers}
    Should Be Equal As Strings    ${response.status_code}    202
    Log Response Data To Console ${response}