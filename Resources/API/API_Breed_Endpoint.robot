*** Settings ***
Documentation     To see all breed properties: https://docs.thecatapi.com/api-reference/breeds/breeds-search
Library           RequestsLibrary
Library           JSONLibrary
Library           Collections
Library           String
Resource          API_Variables.robot
Resource          API_Base_Resources.robot

*** Keywords ***
GET Cat Breed By Name "${breed}"
    &{PARAMS}          Create Dictionary    q=${breed}
    ${MY_CAT_BREED}    GET On Session       alias=${API_ALIAS}    url=${PATH_BREED_SEARCH}    params=${PARAMS}
    Check Response Status Code    ${MY_CAT_BREED}
    ${json_cat_breed}    get value from json    ${MY_CAT_BREED.json()}    $..name
    Should Be Equal    ${json_cat_breed[0]}    ${breed}
    ...  msg= Wrong breed name! Check the corret breed name.
    Log    Cat breed info: ${json_cat_breed[0]}    console=True

GET Cat Breed "${breed}" Propertie "${propertie}"
    &{PARAMS}          Create Dictionary    q=${breed}
    ${MY_CAT_BREED}    GET On Session       alias=${API_ALIAS}    url=${PATH_BREED_SEARCH}    params=${PARAMS}
    Check Response Status Code    ${MY_CAT_BREED}
    ${json_cat_propertie}    get value from json    ${MY_CAT_BREED.json()}    $..${propertie}
    Log    Cat breed "${propertie}" info : ${json_cat_propertie[0]}    console=True

GET Cat Breed List By Name
    &{PARAMS}        Create Dictionary    attach_breed=0
    ${BREED_LIST}    GET On Session       alias=${API_ALIAS}    url=${PATH_BREED_LIST}    params=${PARAMS}
    Check Response Status Code    ${BREED_LIST}
    ${json_breed_list}    get value from json    ${BREED_LIST.json()}    $..name
    ${total_breed_list}   Get length   ${json_breed_list}
    Log    TOTAL: ${total_breed_list}, Cat breed info: ${json_breed_list}    console=True

