*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${txtUsername}      xpath://input[@placeholder="Email"]
${txtPassword}      xpath://input[@placeholder="Password"]
${btnLogin}     xpath://button[./span[text()="Login"]]

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

#Funcionalidade
Realize login
    [Arguments]     ${username}     ${password}

    Escrever login      ${username}
    Escrever senha      ${password}
    Clicar botao login

#Passos
Acessar o site principal
    Log to console      Acessou a tela principal
    Ir Para     login

Logar com login e senha corretos
    Realize login       user@phptravels.com       demouser

Deve ser redirecionado para a tela de produtos
    Verificar label Products    