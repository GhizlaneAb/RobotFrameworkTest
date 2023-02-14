*** Settings ***
Library     DataDriver    ../../Ressources/data/data.csv
Test Template      verify test

*** Test Cases ***
read data from csv  ${username}  ${password}

*** Keywords ***
verify test
    [Arguments]     ${username}     ${password}
    log to console    ${username}   ${password}