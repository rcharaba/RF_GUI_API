*** Settings ***
Documentation     Reusable "Vote" page keywords
Library           SeleniumLibrary    plugins=SeleniumTestability;True;30 Seconds;True
Library           Collections
Library           String
Resource          ..${/}..${/}PageObjects${/}Tab_Vote.robot

*** Keywords ***
Aceess Vote Tab
    Element Should Be Visible   ${LINK_TAB_VOTE}
    Click Element   ${LINK_TAB_VOTE}
    Wait Until Element Is Visible    ${IMG_CAT}

Check Current Cat Picture
    ${source_image}=    Get Element Attribute    ${IMG_CAT}    src
    Log    Cat image source name: ${source_image}    console=True
    [Return]    ${source_image}

Voting In Random Cat
    Aceess Vote Tab
    ${img_before_voting}=    Check Current Cat Picture
    Click Element   ${BTN_LOVEIT}
    Sleep    3  #To be improved with image recognition...
    ${img_after_voting}=    Check Current Cat Picture
    Should Not Be Equal    ${img_before_voting}    ${img_after_voting}
    ...    msg="The Cat picture should be different after voting, but it was the same!"

Favorite One Random Cat
    Aceess Vote Tab
    ${img_before_fav}=    Check Current Cat Picture
    Mouse Over      ${IMG_CAT}
    Click Element   ${BTN_FAVIT}
    Wait Until Element Is Visible    ${IMG_LOVE_ICON}
    ...    error="The heart icon should be visible after favorite a new cat"
    ${img_after_fav}=    Check Current Cat Picture
    Should Be Equal    ${img_before_fav}    ${img_after_fav}
    ...    msg="The Cat picture should be the same after favoriting, but it was different!"

Unfavorite One Random Cat
    ${img_before_unfav}=    Check Current Cat Picture
    Wait Until Element Is Visible    ${BTN_UNFAVIT}
    Click Element    ${BTN_UNFAVIT}
    Wait Until Element Is Not Visible    ${IMG_LOVE_ICON}
    ...    error="The heart icon should not be visible after un-favorite the cat"
    ${img_after_unfav}=    Check Current Cat Picture
    Should Be Equal    ${img_before_unfav}    ${img_after_unfav}
    ...    msg="The Cat picture should be the same after un-favoriting, but it was different!"
