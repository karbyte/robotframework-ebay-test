*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#test setup variables
${URL}  https://www.ebay.com
${Browser}  Chrome
${CookieBanner}  //*[@id="gdpr-banner"]
${CookieAcceptButton}  //*[@id="gdpr-banner-accept"]

#001
${SearchTextBox}  //*[@id="gh-ac"]
${BrandName}  dell
${CategoriesList}  //*[@id="gh-cat-box"]
${CategoriesOptionCompTablets}  //*[@id="gh-cat"]/option[12]
${SearchButton}  //*[@id="gh-btn"]

#002
${MoreCategoryButton}  //*[@id="s0-50-12-0-1-2-6-0-7[0]-13[0]-13[0]"]/button
${OtherComputerAndNetworking}  //*[@id="x-refine__group__0"]/ul/li/ul/li[1]/ul/li[12]/a
${RAMsize16gb}  //*[@id="x-refine__group_1__0"]/ul/li[1]/div/a/div/span/input
${CondNewButton}  //*[@id="x-refine__group__2"]/ul/li[1]/div/a/div/span/input
${BuyItNowFormat}  //*[@id="x-refine__group__4"]/ul/li[4]/div

#003
${AdvancedSearchTopButton}  //*[@id="gh-as-a"]
${AdvancedSearchTextbox}  //*[@id="_nkw"]
${KeywordOptionsList}  //*[@id="_in_kw"]
${AdvSearchCategoriesList}  //*[@id="e1-1"]
${ActivatePriceRangeBtn}  //*[@id="_mPrRngCbx"]
${PriceRangeFrom}  //*[@id="adv_search_from"]/fieldset[3]/input[2]
${LowerPriceRange}  500
${PriceRangeTo}  //*[@id="adv_search_from"]/fieldset[3]/input[3]
${UpperPriceRange}  1000
${ListingsButton}  //*[@id="LH_Time"]
${ListingsOptionsList}  //*[@id="adv_search_from"]/fieldset[6]/div[1]/select[1]
${ListingsTimeRange}  //*[@id="adv_search_from"]/fieldset[6]/div[1]/select[2]
${CountryLocationRadioBtn}  _fsradio2
${CountriesList}  //*[@id="_salicSelect"]
${AdvancedSearchBottomButton}  //*[@id="searchBtnLowerLnk"]
${LocationPolandVar}  &LH_LocatedIn=1
${ChosenCountry}  Poland

#004
${SpecificOffer}  //*[@id="srp-river-results"]/ul/li[4]/div/div[2]/a
${ChooseOperatingSystem}  //*[@id="msku-sel-1"]
${ChooseMemory}  //*[@id="msku-sel-2"]
${HDDCapacity}  //*[@id="msku-sel-3"]
${Accesories}  //*[@id="msku-sel-4"]
${AddToCartButton}  //*[@id="atcRedesignId_btn"]

#005
${DeveloperTabButton}  //*[@id="gf-BIG"]/table/tbody/tr/td[2]/ul[2]/li[1]/a
${APIoffersButton}  //*[@id="mainContent"]/section[1]/div/div[2]/div/div[2]/div/a
${BrowseAPIsLink}  //*[@id="mainContent"]/section[3]/table[2]/tbody/tr[1]/td[1]/a

*** Keywords ***
Open Browser & Maximize Browser Window and Close Cookie Pop-up
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Sleep    1s
    Wait Until Page Contains Element    ${CookieBanner}
    Click Button  ${CookieAcceptButton}

Sleep & Close Browser
    Sleep    2s
    Close Browser

Search for a specific brand name
    Click Button  ${SearchTextBox}
    Input Text    ${SearchTextBox}  ${BrandName}

Choose the product category
    Click Element    ${CategoriesList}
    Click Element    ${CategoriesOptionCompTablets}
    Click Element    ${SearchButton}
    Wait Until Page Contains    results

Filtering the search results by category, RAM size and condition
    Click Element    ${MoreCategoryButton}
    Wait Until Page Contains    results
    Click Element    ${OtherComputerAndNetworking}
    Wait Until Page Contains    results
    Click Element    ${RAMsize16gb}
    Wait Until Page Contains    results
    Click Element    ${CondNewButton}
    Wait Until Page Contains    results

Show only Buy it Now offers
    Click Element    ${BuyItNowFormat}

Get into Advanced Search tab & search the brand
    Click Element    ${AdvancedSearchTopButton}
    Input Text    ${AdvancedSearchTextbox}    ${BrandName}

Choosing the category from the list
    Select From List By Label    ${AdvSearchCategoriesList}    Computers/Tablets & Networking

Activate & Choose the Price Range for an item
    Click Element    ${ActivatePriceRangeBtn}
    Input Text    ${PriceRangeFrom}    ${LowerPriceRange}
    Input Text    ${PriceRangeTo}    ${UpperPriceRange}

Filtering listings by date of publication
    Click Element    ${ListingsButton}
    Select From List By Label   ${ListingsOptionsList}   Started within
    Select From List By Label   ${ListingsTimeRange}   6 days

Choosing the offer's location
    Select Radio Button  ${CountryLocationRadioBtn}  ${LocationPolandVar}
    Radio Button Should Be Set To    ${CountryLocationRadioBtn}  ${LocationPolandVar}
    Select From List By Label   ${CountriesList}     ${ChosenCountry}

Confirm the choices and search the site
    Click Element  ${AdvancedSearchBottomButton}

CLicking an offer & switching to a new tab
    Click Element    ${SpecificOffer}
    Switch Window  new

Choosing the configuration & adding to cart
    Select From List By Label    ${ChooseOperatingSystem}  Windows 10
    Select From List By Label    ${ChooseMemory}  8 GB
    Select From List By Label    ${HDDCapacity}  1 TB
    Select From List By Label    ${Accesories}  DVD Burner + HDMI Adapter
    Click Element    ${AddToCartButton}

Click the developers tab
    Sleep    1s
    Click Element    ${DeveloperTabButton}
    Wait Until Page Contains    Develop

Click APIs button & scroll into offers
    Click Element    ${APIoffersButton}
    Wait Until Page Contains    APIs
    Scroll Element Into View    ${BrowseAPIsLink}