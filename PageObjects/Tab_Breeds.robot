*** Variables ***

${LINK_TAB_BREEDS}          xpath://a[@href='#tab-breeds'][contains(text(),'Breeds')]
${COMBOBOX_BREED_LIST}      xpath:(//div[@role="combobox"])[1]
${COMBOBOX_BREED_SCROLL}    div.v-menu__content.theme--light.menuable__content__active
${COMBOBOX_BREED_NAMES}     //div[@class="v-list__tile__title"]
${HEADER_CAT_BREED}         css:h3