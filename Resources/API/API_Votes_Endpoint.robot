*** Settings ***
Documentation     To see all breed properties: https://docs.thecatapi.com/api-reference/votes
Library           RequestsLibrary
Library           JSONLibrary
Library           Collections
Library           String
Resource          API_Variables.robot
Resource          API_Base_Resources.robot

*** Keywords ***
POST New Cat Vote
    [Arguments]    ${image_id}    ${vote_value}
    ${POST_HEADER}=    Build POST Header
    ${BODY}         Format String    ${CURDIR}${/}..${/}..${/}TestData${/}API${/}POST_Vote_Template.json
    ...             image_id=${image_id}
    ...             user_id=${USER_ID}
    ...             vote_value=${vote_value}
    Log             My Body is:\n${BODY}    console=True
    ${RESPONSE}     POST On Session    alias=${API_ALIAS}    url=${PATH_VOTES}    data=${BODY}    headers=${POST_HEADER}
    Check Response Status Code   ${RESPONSE}