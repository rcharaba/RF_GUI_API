*** Settings ***
Resource    ..${/}..${/}..${/}Resources${/}API${/}API_Base_Resources.robot
Resource    ..${/}..${/}..${/}Resources${/}API${/}API_Breed_Endpoint.robot

Library    DataDriver    ..${/}..${/}..${/}TestData${/}API${/}BreedNames.csv

Suite Setup       Create API Session
Suite Teardown    Delete All Sessions
Test Template     Checking Breed Name Template

*** Test Cases ***
Checking Breed Name Existence: ${breed}

*** Keywords ***
Checking Breed Name Template
    [Arguments]    ${breed}
    GET Cat Breed By Name "${breed}"
