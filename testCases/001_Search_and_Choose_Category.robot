*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.ebay.com

*** Test Cases ***
case_001 Search and Choose Category
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Close Cookie Pop-up
    Search & Choose Category
    Sleep & Close Browser