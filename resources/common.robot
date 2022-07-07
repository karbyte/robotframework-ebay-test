*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CookieAcceptButton}  //*[@id="gdpr-banner-accept"]
${SearchTextBox}  //*[@id="gh-ac"]
${CategoriesList}  //*[@id="gh-cat-box"]
${CategoriesOptionCompTablets}  //*[@id="gh-cat"]/option[12]
${SearchButton}  //*[@id="gh-btn"]

*** Keywords ***

Maximize Browser Window and Close Cookie Pop-up
    Maximize Browser Window
    Sleep    4s
    Click Button  ${CookieAcceptButton}

Search & Choose Category
    Click Button  ${SearchTextBox}
    Input Text    ${SearchTextBox}  dell
    Click Element    ${CategoriesList}
    Click Element    ${CategoriesOptionCompTablets}
    Click Element    ${SearchButton}
    Wait Until Page Contains    results

Sleep & Close Browser
    Sleep    2s
    Close Browser