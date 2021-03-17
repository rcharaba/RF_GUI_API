*** Settings ***
Documentation     Main setup keywords
Library           SeleniumLibrary
Resource          ..${/}..${/}PageObjects${/}Main_Page.robot
Resource          Setup_Variables.robot

*** Keywords ***
#************************ SETUP KEYWORDS *****************************
Set Selenium Options
    Set Selenium Speed              ${DELAY}
    Set Selenium Timeout            ${TIMEOUT}

Open CAT Page
    Open Browser                    ${SERVER_URL}    ${BROWSER}
    Set Selenium Options
    Maximize Browser Window
    #Set Window Size                 1366    768
    Wait Until Element Is Visible    ${HEADER_MAIN_PAGE}

Close CAT Page
    Close Browser