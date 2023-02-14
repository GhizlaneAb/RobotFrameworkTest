*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${NAME}     https://www.ebay.com

*** Keywords ***
Verify page
    set global variable    ${NAME}
    page should contain  results for mobile

Select product condition
    click element  xpath=/html/body/div[8]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]
    click element    xpath=/html/body/div[8]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/span/div/div[1]/span[2]
    mouse over  xpath=/html/body/div[8]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/span
    mouse down  xpath=/html/body/div[8]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/span/div/div[2]/span[2]
    click element    xpath=/html/body/div[8]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/span/div/div[2]/span[2]

