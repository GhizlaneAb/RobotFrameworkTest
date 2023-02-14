*** Settings ***
Documentation    Test case pour expliquer les sections
...              sous RobotFramework
Library    SeleniumLibrary

*** Variables ***
${URL} =    www.google.com

*** Keywords ***
Afficher un message
    log    ${URL}

*** Test Cases ***
Afficher un text1
    [Tags]    1
    Afficher un message

Afficher text2
    [Tags]    2
    Afficher un message

Afficher text3
    [Tags]    3
    Afficher un message
