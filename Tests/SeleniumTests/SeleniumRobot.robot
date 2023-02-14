*** Settings ***
Documentation    Test Basic sur Selenium
Library    SeleniumLibrary
*** Variables ***
${Browser}    Chrome
${URL}     https://www.google.com
${ghizlane_divs}
${link_element}
${link_url}
*** Keywords ***
Open Navigator
    open browser    ${URL}  ${Browser}
    maximize browser window

*** Test Cases ***
test case
    [Tags]    1
    Open Navigator
    page should contain element    xpath=//html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    input text    xpath=//html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   Blockchain
    click button    xpath=//html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]


