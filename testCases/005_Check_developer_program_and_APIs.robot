*** Settings ***
Resource  ../resources/common.robot
Library  SeleniumLibrary

Test Setup  Open Browser, Maximize Browser Window and Close Cookie Pop-up
Test Teardown  Sleep and Close Browser

*** Test Cases ***
testcase_005_Check_developer_and_API_tab
    Click the developers tab
    Click APIs button & scroll into offers