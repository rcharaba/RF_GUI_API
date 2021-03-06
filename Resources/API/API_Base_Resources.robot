*** Settings ***
Documentation       API doc: https://docs.thecatapi.com/
...                 json path syntax: https://jsonpath.com/
Library             RequestsLibrary
Library             Collections
Resource            API_Variables.robot

*** Variables ***
${HEADERS}     { 'x-api-key': "${API_KEY}" }

*** Keywords ***
Create API Session
    Create Session      alias=${API_ALIAS}    url=${API_HOST}    headers=${HEADERS}    disable_warnings=True
    ${exists}=    Session Exists    ${API_ALIAS}
    Should Be True    ${exists}
    ...  msg= Check your session creation!

Check Response Status Code
    [Arguments]      ${RESPONSE}
    Should Be True   '${RESPONSE.status_code}'=='200' or '${RESPONSE.status_code}'=='201'
    ...  msg= Request error! Check the status: ${RESPONSE}


