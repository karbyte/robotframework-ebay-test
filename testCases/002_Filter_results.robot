*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.ebay.com
${MoreCategoryButton}  //*[@id="s0-50-12-0-1-2-6-0-7[0]-13[0]-13[0]"]/button
${OtherComputerAndNetworking}  //*[@id="x-refine__group__0"]/ul/li/ul/li[1]/ul/li[12]/a
${RAMsize16gb}  //*[@id="x-refine__group_1__0"]/ul/li[1]/div/a/div/span/input
${CondNewButton}  //*[@id="x-refine__group__2"]/ul/li[1]/div/a/div/span/input
${BuyItNowFormat}  //*[@id="x-refine__group__4"]/ul/li[4]/div

*** Test Cases ***
case_002 Filter the search results
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Close Cookie Pop-up
    Search & Choose Category

    #sort by subcategory: Other Computers & Networking and Condition:New
    Click Element    ${MoreCategoryButton}
    Click Element    ${OtherComputerAndNetworking}
    Click Element    ${RAMsize16gb}
    Click Element    ${CondNewButton}
    Wait Until Page Contains    results

    #sort by Buy it Now
    Click Element    ${BuyItNowFormat}
    Sleep & Close Browser