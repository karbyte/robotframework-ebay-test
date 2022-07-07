*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.ebay.com

*** Test Cases ***
case_003 Advanced Search Testing
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Close Cookie Pop-up

    Click Element    //*[@id="gh-as-a"]
    Input Text    //*[@id="_nkw"]    dell
    Page Should Contain List    //*[@id="_in_kw"]
    Select From List By Label    //*[@id="_in_kw"]  Exact words, any order
    Select From List By Label    //*[@id="e1-1"]    Computers/Tablets & Networking
    Click Element    //*[@id="_mPrRngCbx"]
    Input Text    //*[@id="adv_search_from"]/fieldset[3]/input[2]    500
    Input Text    //*[@id="adv_search_from"]/fieldset[3]/input[3]    1000
    Click Element    //*[@id="LH_Time"]
    Select From List By Label    //*[@id="adv_search_from"]/fieldset[6]/div[1]/select[1]  Started within
    Select From List By Label    //*[@id="adv_search_from"]/fieldset[6]/div[1]/select[2]  6 days
    Select Radio Button    _fsradio2    &LH_LocatedIn=1
    Radio Button Should Be Set To    _fsradio2    &LH_LocatedIn=1
    Select From List By Label    //*[@id="_salicSelect"]    Poland
    Click Element    //*[@id="searchBtnLowerLnk"]
    Sleep & Close Browser
    