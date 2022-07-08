*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.ebay.com
${AdvancedSearchTopButton}  //*[@id="gh-as-a"]
${AdvancedSearchTextbox}  //*[@id="_nkw"]
${KeywordOptionsList}  //*[@id="_in_kw"]
${AdvSearchCategoriesList}  //*[@id="e1-1"]
${ActivatePriceRangeBtn}  //*[@id="_mPrRngCbx"]
${PriceRangeFrom}  //*[@id="adv_search_from"]/fieldset[3]/input[2]
${PriceRangeTo}  //*[@id="adv_search_from"]/fieldset[3]/input[3]
${ListingsButton}  //*[@id="LH_Time"]
${ListingsOptionsList}  //*[@id="adv_search_from"]/fieldset[6]/div[1]/select[1]
${ListingsTimeRange}  //*[@id="adv_search_from"]/fieldset[6]/div[1]/select[2]
${CountryLocationRadioBtn}  _fsradio2
${CountriesList}  //*[@id="_salicSelect"]
${AdvancedSearchBottomButton}  //*[@id="searchBtnLowerLnk"]
${LocationPolandVar}  &LH_LocatedIn=1

*** Test Cases ***
case_003 Advanced Search Testing
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Close Cookie Pop-up

    Click Element    ${AdvancedSearchTopButton}
    Input Text    ${AdvancedSearchTextbox}    dell
    Page Should Contain List     ${KeywordOptionsList}
    Select From List By Label    ${KeywordOptionsList}  Exact words, any order
    Select From List By Label    ${AdvSearchCategoriesList}    Computers/Tablets & Networking
    Click Element    ${ActivatePriceRangeBtn}
    Input Text    ${PriceRangeFrom}    500
    Input Text    ${PriceRangeTo}    1000
    Click Element    ${ListingsButton}
    Select From List By Label   ${ListingsOptionsList}   Started within
    Select From List By Label   ${ListingsTimeRange}   6 days
    Select Radio Button  ${CountryLocationRadioBtn}  ${LocationPolandVar}
    Radio Button Should Be Set To    ${CountryLocationRadioBtn}  ${LocationPolandVar}
    Select From List By Label   ${CountriesList}     Poland
    Click Element  ${AdvancedSearchBottomButton}
    Sleep & Close Browser