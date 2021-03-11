*** Settings ***
Resource    ..${/}..${/}..${/}Resources${/}GUI${/}Setup_Keywords.robot
Resource    ..${/}..${/}..${/}Resources${/}GUI${/}Vote_Keywords.robot

Suite Setup       Open CAT Page
Suite Teardown    Close CAT Page

*** Test Cases ***
Voting In One Random Cat Once
    Voting In Random Cat