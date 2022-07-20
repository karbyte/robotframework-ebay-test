*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

Test Setup  Open Browser, Maximize Browser Window and Close Cookie Pop-up
Test Teardown  Sleep and Close Browser

*** Test Cases ***
testcase_003_Advanced_Search_Testing
    Get into Advanced Search tab & search the brand  Brand=${BrandName}
    Choosing the category from the list
    Activate & Choose the Price Range for an item  LowerPriceRange=${LowerPriceRange}  UpperPriceRange=${UpperPriceRange}
    Filtering listings by date of publication
    Choosing the offer's location
    Confirm the choices and search the site