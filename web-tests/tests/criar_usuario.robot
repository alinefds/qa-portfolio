*** Settings ***

Resource    ../resources/utils.robot

Suite Setup        Abrir o navegador
Suite Teardown    Fechar o navegador

*** Test Cases ***
Cenário: Login válido
    Acessar ao site "Automation Exercise"
    Clicar na opção do menu Signup/Login
    Verificar se a mensagem esta visivel    New User Signup!
    Insira o nome e o email
    Clicar no botão Signup 
    Verificar se a mensagem esta visivel    Enter Account Information