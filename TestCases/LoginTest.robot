*** Settings ***
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/AccountPage.robot
Resource    ../Pages/SignupPage.robot

Test Setup      Open Session
Test Teardown       Close Session

*** Test Cases ***
Realizar login com sucesso
    [Tags]      login       loginSucesso
    Acessar o site principal
    Logar com login e senha corretos
    Deve ser redirecionado para a tela de produtos

Realizar login com erro
    [Tags]      login       loginErro
    Acessar o site principal
    Tentar logar com login e senha incorretos

Registro de usuario
    [Tags]      login       registro
    Acessar o site de Registro
    Preencher as informações da tela
    Clicar em Registrar

Alterar dados do usuario
    [Tags]      login       profile
    Acessar o site principal
    Logar com login e senha corretos
    Acessar tela de profile

Fazer busca de voos
    [Tags]      login       hotels
    Acessar o site principal
    Logar com login e senha corretos
    Acessar tela de hotels