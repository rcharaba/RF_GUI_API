*** Settings ***
Resource    ..${/}..${/}..${/}Resources${/}API${/}API_Base_Resources.robot
Resource    ..${/}..${/}..${/}Resources${/}API${/}API_Breed_Endpoint.robot

Suite Setup       Create API Session
Suite Teardown    Delete All Sessions

*** Test Cases ***
Getting Cat Breed List
    GET Cat Breed List By Name



