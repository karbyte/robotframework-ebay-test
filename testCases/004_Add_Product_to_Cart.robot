*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.ebay.com
${SpecificOffer}  //*[@id="srp-river-results"]/ul/li[4]/div/div[2]/a
${ChooseOperatingSystem}  //*[@id="msku-sel-1"]
${ChooseMemory}  //*[@id="msku-sel-2"]
${HDDCapacity}  //*[@id="msku-sel-3"]
${Accesories}  //*[@id="msku-sel-4"]
${AddToCartButton}  //*[@id="atcRedesignId_btn"]

*** Test Cases ***
case_004 Add a product to cart
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Close Cookie Pop-up
    Search & Choose Category
    Click Element    ${SpecificOffer}
    Switch Window  new
    Select From List By Label    ${ChooseOperatingSystem}  Windows 10
    Select From List By Label    ${ChooseMemory}  8 GB
    Select From List By Label    ${HDDCapacity}  1 TB
    Select From List By Label    ${Accesories}  DVD Burner + HDMI Adapter
    Click Element    ${AddToCartButton}
    Sleep & Close Browser