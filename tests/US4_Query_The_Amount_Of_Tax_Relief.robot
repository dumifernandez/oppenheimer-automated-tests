*** Settings ***
Documentation    US 4: As the Bookkeeper, I should be able to query the amount of tax relief for each person in the database so that I can report the figures to my Bookkeeping Manager
Library          RequestsLibrary
Resource         Common.robot


*** Variables ***
${GET_SESSION_NAME}    GET tax relief for each person


*** Test Cases ***
Verify that a bookkeeper can get a list of working class heros via the API
    [Documentation]    Geting a list of working class heros
    [Tags]             happy-path

    Create Session    ${GET_SESSION_NAME}    ${BASE_URL}
    ${headers}=       Create Dictionary   ${CONTENT_TYPE_HEADER_NAME}=${CONTENT_TYPE_HEADER_VALUE}
    ${response}=      GET On Session    ${GET_SESSION_NAME}    calculator/taxRelief    headers=${headers}
    Should Be Equal As Strings    ${response.status_code}    200
    Log Response Data To Console ${response}
    # Cannot be performed this test case due API is not working. Hence tax amount not returns.


# Verify that can able to GET endpoint which returns a list consist of natid, tax relief amount and name
    # Cannot be performed this test case due API is not working. Hence tax amount not returns.


# Verify that natid field must be masked from the 5th character onwards with dollar sign ‘$’
    # Cannot be performed this test case due API is not working. Hence tax amount not returns.


# Verify that computation of the tax relief is using the formula as described
    # Cannot be performed this test case due API is not working. Hence tax amount not returns.


# Verify that calculated tax relief amount should be subjected to normal rounding rule to remove any decimal places
    # Cannot be performed this test case due API is not working. Hence tax amount not returns.


# Verify that the final tax relief amount should be 50.00
    # Cannot be performed this test case due API is not working. Hence tax amount not returns.


# Verify that amount should be truncated at the second decimal place and then subjected to normal rounding rule
    # Cannot be performed this test case due API is not working. Hence tax amount not returns.
