*** Settings ***
Library  SeleniumLibrary
Resource    ./SearchProductPage.robot

*** Variables ***
${Browser}    Chrome
${URL}     https://www.ebay.com


*** Keywords ***
Open Navigator
    open browser    ${NAME}  ${Browser}
    maximize browser window

Close Navigator
    close browser

Input Search and click search
    input text  xpath=//*[@id="gh-ac"]  mobile
    press keys  xpath=//*[@id="gh-btn"]  [return]

Advanced search
    click element  xpath=//*[@id="gh-as-a"]

