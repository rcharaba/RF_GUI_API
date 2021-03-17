*** Settings ***
Force Tags    api
Resource    ..${/}..${/}..${/}Resources${/}API${/}API_Base_Resources.robot
Resource    ..${/}..${/}..${/}Resources${/}API${/}API_Votes_Endpoint.robot

Suite Setup       Create API Session
Suite Teardown    Delete All Sessions

*** Test Cases ***
Create New Cat Vote
    POST New Cat Vote    d5u    1