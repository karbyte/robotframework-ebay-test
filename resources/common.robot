*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Maximize Browser Window and Close Cookie Pop-up
    Maximize Browser Window
    Sleep    4s
    Click Button    //*[@id="gdpr-banner-accept"]

Sleep & Close Browser
    Sleep    2s
    Close Browser

Search & Choose Category
    Click Button  //*[@id="gh-ac"]
    Input Text    //*[@id="gh-ac"]  dell
    Click Element    //*[@id="gh-cat-box"]
    Click Element    //*[@id="gh-cat"]/option[12]
    Click Element    //*[@id="gh-btn"]
    Wait Until Page Contains    results