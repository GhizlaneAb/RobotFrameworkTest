*** Settings ***
Library     MongoDBLibrary

Suite Setup    Connect To Mongodb   ${dbHost}     ${dbPort}
Suite Teardown    Disconnect From Mongodb

*** Variables ***
${dbHost}   localhost
${dbPort}   27017

*** Test Cases ***
first test
    [Tags]    1
    ${allRecords} =    Get Mongodb Collection Count    project_db      data
    log to console    ${allRecords}


