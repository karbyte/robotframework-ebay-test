*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

Test Setup  Open Browser & Maximize Browser Window and Close Cookie Pop-up
Test Teardown  Sleep & Close Browser

*** Test Cases ***
testcase_004_Adding_a_product_to_cart
    Search for a specific brand name
    Choose the product category
    CLicking an offer & switching to a new tab
    Choosing the configuration & adding to cart