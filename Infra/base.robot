*** Settings ***
Library		SeleniumLibrary
Library     BuiltIn
Library     Library/Uteis.py
Library     Library/Config.py

*** Variables ***

*** Keywords ***
Open Session
    ${base_url}=     Pegar Valor Json    base_url
    ${brower}=       Pegar Valor Json    browser
    Open Browser    ${base_url}     ${brower}
    Get Selenium speed
    Maximize Browser Window

Close Session
    Close Browser

Ir para
    [Arguments]     ${path}
    ${base_url}=     Pegar Valor Json    base_url
    Go to       ${base_url}${path}