*** Settings ***
Library     SeleniumLibrary
Library     DatabaseLibrary

Suite Setup    Connect To Database    pymysql    ${DBName}   ${DBUser}   ${DBPassw}  ${DBHost}   ${DBPort}
Suite Teardown    Disconnect from Database

*** Variables ***
${Browser}    Chrome
${url}  https://www.facebook.com
${DBName}   test
${DBUser}   root
${DBPassw}
${DBHost}   localhost
${DBPort}   3306
${success}    The account is correst
${failed}   The account doesn't exist

*** Test Cases ***
login test
    [Tags]    3
    open the browser
    @{data}=    query    select * from compte
    FOR   ${d}   IN  @{data}
      input text    id=email    ${d}[1]
      input text    id=pass    ${d}[2]
      click button    name=login
      ${value}=    Run Keyword And Return Status   page should contain element    class=x1b0d499
      log to console    ${value}
      RUN KEYWORD IF    '${value}' == 'FAIL'   failed key
      ...   ELSE   success key
    END
    close the browser


*** Keywords ***
Open the browser
    open browser    ${url}  ${Browser}
    maximize browser window

Close the browser
    close browser

success key
    log to console  ${success}

failed key
    log to console    ${failed}

