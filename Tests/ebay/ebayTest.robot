*** Settings ***
Documentation  test ebay site
Resource  ../../Ressources/PageObjects/HeaderPage.robot
Resource  ../../Ressources/PageObjects/SearchProductPage.robot

*** Variables ***

*** Test Cases ***
search test case
    [Tags]  1
    HeaderPage.Open Navigator
    HeaderPage.Input Search and click search

    SearchProductPage.Select product condition
    HeaderPage.Close Navigator