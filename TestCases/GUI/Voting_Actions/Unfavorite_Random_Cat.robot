*** Settings ***
Force Tags    gui
Resource    ..${/}..${/}..${/}Resources${/}GUI${/}Setup_Keywords.robot
Resource    ..${/}..${/}..${/}Resources${/}GUI${/}Vote_Keywords.robot

Suite Setup       Open CAT Page
Suite Teardown    Close CAT Page

*** Test Cases ***
Unfavoriting One Random Cat
    Run Keyword And Continue On Failure    Favorite One Random Cat
    Unfavorite One Random Cat