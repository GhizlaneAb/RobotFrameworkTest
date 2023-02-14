*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup     Connect To Database    pymysql    ${DBName}   ${DBUser}   ${DBPassw}  ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database

*** Variables ***
${DBName}   projetsma
${DBUser}   root
${DBPassw}
${DBHost}   localhost
${DBPort}   3306

*** Test Cases ***
Create person table
    [Tags]    1
    ${output} =  execute sql string    Create table person(id integer, first_name varchar(20), second_name varchar(20))
    log to console    ${output}
    should be equal as strings    ${output}     None

Insert data in table
    [Tags]    2
    ${output}=  execute sql string    Insert into person values (1,"ghizlane", "ghizlane")
    log to console    ${output}
    should be equal as strings    ${output}     None

Insert multiple data
    [Tags]    3
    ${output}=  execute sql script    C:/Users/i/Desktop/robotFramework/test1/Ressources/insertData.sql
    log to console    ${output}

Check if a record exist
    [Tags]    4
    ${data}=    check if exists in database    select id from person where first_name="ghizlane"
    log to console    ${data}

Check table if exist
    [Tags]    5
    table must exist    person

Select from table
    [Tags]    6
    @{data}=    query   select * from person;
    FOR   ${d}   IN  @{data}
       log to console    ${d}
    END

Update a record
    [Tags]    7
    execute sql string    update person set first_name="lolo" where id=1




