*** Settings ***
Force Tags    gui
Resource    ..${/}..${/}..${/}Resources${/}GUI${/}Setup_Keywords.robot
Resource    ..${/}..${/}..${/}Resources${/}GUI${/}Vote_Keywords.robot

Suite Setup       Open CAT Page
Suite Teardown    Close CAT Page

*** Test Cases ***
Favoriting One Random Cat
    Favorite One Random Cat