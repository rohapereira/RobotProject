*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${txtUsername}      xpath://input[@placeholder="Email"]
${txtPassword}      xpath://input[@placeholder="Password"]
${btnLogin}     xpath://button[./span[text()="Login"]]
${btnProfile}       xpath://*[@id="fadein"]/div[1]/div/div[3]/ul/li[4]/a
${txtFirstName}       xpath://input[@name="firstname"]
${btnUpdateProfile}     xpath://button[@class="theme-btn waves-effect"]

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

Clicar botao profile
    Click button    ${btnProfile}

Alterar Nome
    [Arguments]     ${first_name}
    Input Text      ${txtFirstName}     ${first_name}

Clicar botão update profile
    Click button    ${btnUpdateProfile}

#Funcionalidade
Realize login
    [Arguments]     ${username}     ${password}

    Escrever login      ${username}
    Escrever senha      ${password}
    Clicar botao login

Clicar em profile
    Clicar botao profile

Altere o nome
    [Arguments]     ${first_name}

    Digite nome novo        ${first_name}

#Passos
Acessar o site principal
    Log to console      Acessou a tela principal
    Ir Para     login

Logar com login e senha corretos
    Realize login       rodrigo.pereira@testmail.com       123456

Acessar tela de profile
    Clicar em profile
    Altere o nome       Roger
    Clicar botão update profile