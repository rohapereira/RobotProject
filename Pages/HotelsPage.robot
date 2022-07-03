*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${txtUsername}      xpath://input[@placeholder="Email"]
${txtPassword}      xpath://input[@placeholder="Password"]
${btnLogin}     xpath://button[./span[text()="Login"]]
${btnHotels}    xpath://*[@id="fadein"]/header/div[2]/div/div/div/div/div[2]/nav/ul/li[2]/a
${txtCity}      xpath://*[@id="select2-hotels_city-container"]
${btnSearch}        xpath://*[@id="submit"]/span[1]

*** Keywords ***
#Funções
Escrever login
    [Arguments]     ${username}
    Input Text      ${txtUsername}      ${username}

Escrever senha
    [Arguments]     ${password}
    Input Text      ${txtPassword}      ${password}

Clicar botao login
    Click button    ${btnLogin}

Clicar botao hotels
    Click button    ${btnHotels}

Escrever cidade destino
    [Arguments]     ${city}
    Input Text      ${txtCity}      ${city}

Clicar botao search
    Click button    ${btnSearch}

#Funcionalidade
Realize login
    [Arguments]     ${username}     ${password}

    Escrever login      ${username}
    Escrever senha      ${password}
    Clicar botao login

Clicar em hotels
    Clicar botao hotels

Pesquisar cidade
    [Arguments]     ${city}
    Escrever cidade destino     ${city}

Clicar em search
    Clicar botao search

#Passos
Acessar o site principal
    Log to console      Acessou a tela principal
    Ir Para     login

Logar com login e senha corretos
    Realize login       user@phptravels.com       demouser

Acessar tela de hotels
    Clicar em hotels
    Pesquisar cidade        Aguaclara,Colombia
    Clicar em search