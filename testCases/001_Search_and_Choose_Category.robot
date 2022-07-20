*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

Test Setup  Open Browser & Maximize Browser Window and Close Cookie Pop-up
Test Teardown  Sleep & Close Browser

*** Test Cases ***
testcase_001_Search_and_Choose_Category
    Search for a specific brand name  Brand=${BrandName}
    Choose the product category