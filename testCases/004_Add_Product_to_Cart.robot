*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

Test Setup  Open Browser, Maximize Browser Window and Close Cookie Pop-up
Test Teardown  Sleep and Close Browser
*** Test Cases ***
testcase_004_Adding_a_product_to_cart
    Search for a specific brand name  Brand=${BrandName}
    Choose the product category
    Clicking an offer & switching to a new tab
    Adding to cart