*** Settings ***
Documentation    Common file for all user stories of the project
Library          RequestsLibrary
Library          String
Library          JSONLibrary
Library          SeleniumLibrary


*** Variables ***
${CONTENT_TYPE_HEADER_NAME}                Content-Type
${CONTENT_TYPE_HEADER_VALUE}               application/json
${BASE_URL}                                http://localhost:8080
${BROWSER}                                 Chrome


*** Keywords ***
Convert A JSON File To A JSON String ${jsonFileName}
    [Documentation]    Converts a JSON file to a JSON string

    ${requestJson}=    Load Json From File    ${EXECDIR}/resources/requests/${jsonFileName}
    ${requestJsonString}=	Convert JSON To String	${requestJson}
    Return from keyword    ${requestJsonString}


Log Response Data To Console ${responseFromSession}
    [Documentation]    Log resoponse data to console

    Log To Console    Response Status Code: ${responseFromSession.status_code}
    Log To Console    Response Body: ${responseFromSession.content}


Open The Oppenheimer Project UI
    [Documentation]    Open The Oppenheimer Project UI

    Open Browser       ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s