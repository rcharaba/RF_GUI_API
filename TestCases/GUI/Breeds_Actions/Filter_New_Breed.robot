*** Settings ***
Force Tags    gui
Resource    ..${/}..${/}..${/}Resources${/}GUI${/}Setup_Keywords.robot
Resource    ..${/}..${/}..${/}Resources${/}GUI${/}Breeds_Keywords.robot

Suite Setup       Open CAT Page
Suite Teardown    Close CAT Page

*** Test Cases ***
Filtering New Cat Breed
    Aceess Breed Tab
    Scroll And Click Breed Name    York Chocolate