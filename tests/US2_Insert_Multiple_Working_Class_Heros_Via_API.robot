*** Settings ***
Documentation    US 2: As the Clerk, I should be able to insert more than one working class hero into database via an API
Library          RequestsLibrary
Resource         Common.robot


*** Variables ***
${POST_SESSION_NAME}    POST Multiple Working Class Hero Session


*** Test Cases ***
Verify that a clerk can insert multiple working class heros via the API
    [Documentation]    Inserting multiple records via API
    [Tags]             happy-path

    ${data}=          Convert A JSON File To A JSON String Insert_multi_work_class_heros.json
    ${headers}=       Create Dictionary   ${CONTENT_TYPE_HEADER_NAME}=${CONTENT_TYPE_HEADER_VALUE}
    Create Session    ${POST_SESSION_NAME}    ${BASE_URL}
    ${response}=      POST On Session    ${POST_SESSION_NAME}    calculator/insertMultiple    data=${data}    headers=${headers}
    Should Be Equal As Strings    ${response.status_code}    202
    Log Response Data To Console ${response}