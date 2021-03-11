*** Settings ***
Documentation     To see all breed properties: https://docs.thecatapi.com/api-reference/breeds
Library           SeleniumLibrary
Library           Collections
Library           Builtin
Library           String
Resource          ..${/}..${/}PageObjects${/}Tab_Vote.robot

*** Keywords ***
#*************************************** SETUP KEYWORDS **************************************
Voting In Random Cat
    Element Should Be Visible   ${LINK_TAB_VOTE}
    Click Element   ${LINK_TAB_VOTE}
    Wait Until Element Is Visible    ${IMG_CAT}
    ${source_image_before}=    Get Element Attribute    ${IMG_CAT}    src
    Log    Cat image before voting: ${source_image_before}    console=True
    Click Element   ${BTN_LOVEIT}
    Sleep    3  #To be improved with image recognition...
    ${source_image_after}=     Get Element Attribute    ${IMG_CAT}    src
    Log    Cat image after voting: ${source_image_after}    console=True
    Should Not Be Equal    ${source_image_before}    ${source_image_after}
    ...    msg="The Cat picture should be different after voting, but it is was same!"