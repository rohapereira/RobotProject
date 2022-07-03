*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${first_name}       xpath://input[@placeholder="First Name"]
${last_name}        xpath://input[@placeholder="Last Name"]
${phone}        xpath://input[@placeholder="Phone"]
${email}        xpath://input[@placeholder="Email"]
${password}     xpath://input[@placeholder="Password"]
${account_type}     xpath://span[@class="selection"]/span
${button_cookie}        xpath://button[text()="Got It"]
${btnSignup}        xpath://button[@type="submit"]

*** Keywords ***
#Funcao
Selecionar Tipo
    [Arguments]     ${type}
    ${account_types}=        Get WebElement     xpath://li[text()="${type}"]
    Click Element       ${account_types}

Clicar botao signup
    Click button    ${btnSignup}

#Passos
Acessar o site de Registro
    Ir para     signup

Preencher as informações da tela
    ${first_name}=       Sortear Nome
    ${last_name}=        Sortear Sobrenome
    ${phone}=       99999-9999
    ${email}=       Sortear Email
    ${password}=        123456
    Click Button        ${button_cookie}
    Wait Until Element Is Not Visible       ${button_cookie}
    Click Element       ${account_type}
    Selecionar Tipo     Agent

Clicar em Registrar
    Clicar botao signup