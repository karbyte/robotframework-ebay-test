*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

Test Setup  Open Browser, Maximize Browser Window and Close Cookie Pop-up
Test Teardown  Sleep and Close Browser

*** Test Cases ***
testcase_002_Filter_search_results
    Search for a specific brand name  Brand=${BrandName}
    Choose the product category
    Filtering the search results by category and condition
    Show only Buy it Now offers