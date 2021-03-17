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

Scroll And Click Breed Name
    [Arguments]    ${breed_name}
    Click Element    ${COMBOBOX_BREED_LIST}
    FOR    ${step}    IN RANGE    0    4000    200
        Execute Javascript    document.querySelector('${COMBOBOX_BREED_SCROLL}').scrollTo(0,${step})
        sleep    0.3
        ${name_is_visible}=    Get Element Count    xpath:(${COMBOBOX_BREED_NAMES}\[contains(text(),'${breed_name}')])[1]
        Exit For Loop If    '${name_is_visible}'=='1'
    END
    Click Element    xpath:(${COMBOBOX_BREED_NAMES}\[contains(text(),'${breed_name}')])[1]




