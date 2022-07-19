*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

Test Setup  Open Browser & Maximize Browser Window and Close Cookie Pop-up
Test Teardown  Sleep & Close Browser

*** Test Cases ***
testcase_002_Filter_search_results
    Search for a specific brand name
    Choose the product category
    Filtering the search results by category, RAM size and condition
    Show only Buy it Now offers