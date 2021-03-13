*** Settings ***
Documentation     Reusable "Breeds" page keywords
Library           SeleniumLibrary
Library           Collections
Library           String
Resource          ..${/}..${/}PageObjects${/}Tab_Breeds.robot

*** Keywords ***
Aceess Breed Tab
    Element Should Be Visible   ${LINK_TAB_BREEDS}
    Click Element   ${LINK_TAB_BREEDS}
    Wait Until Element Is Visible    ${HEADER_CAT_BREED}
    Click Element    ${SELECTOR_BREED_LIST}