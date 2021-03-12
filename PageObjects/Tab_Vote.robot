*** Variables ***

${LINK_TAB_VOTE}    xpath://a[@href='#tab-1'][contains(text(),'Vote')]
${BTN_LOVEIT}       xpath://button[@class='v-btn theme--light green']//*[contains(text(),"Love it")]/..
${BTN_NOPEIT}       xpath://button[@class='v-btn theme--light red']//*[contains(text(),"Nope it")]/..
${IMG_CAT}          xpath://img[@src]
${BTN_FAVIT}        xpath://button[@class='v-btn v-btn--large theme--light green']//*[contains(text(),"Fav it")]/..
${BTN_UNFAVIT}      xpath://button[@class='v-btn v-btn--large theme--light red']//*[contains(text(),"Un-Fav it")]/..
${IMG_LOVE_ICON}    xpath://i[@class='v-icon mdi mdi-heart theme--light red--text'][@data-v-1ced3274]