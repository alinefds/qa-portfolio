*** Settings ***

Resource    ../resources/utils.robot

Suite Setup        Abrir o navegador
Suite Teardown    Fechar o navegador

Test Teardown    Deletar conta criada

*** Test Cases ***
Cenário: Criar Registro de Novo Usuario com Sucesso
    Validar página    Automation Exercise
    Clicar em Signup/Login
    Verificar se a mensagem esta visivel    New User Signup!
    ${nome}    ${email}    Preencher dados de cadastro
    Clicar em Signup 
    Verificar se a mensagem esta visivel    Enter Account Information
    Selecionar gênero
    Validar dados pré-preenchidos nome e email
    ...    ${nome}    
    ...    ${email}
    ${nova_senha}    Preencher senha
    Preencher data de aniversario
    Selecionar newsletter
    Selecionar ofertas especiais
    Verificar se a mensagem esta visivel    Address Information
    Preencher as Informações de endereço
    Clicar em Create Account
    Verificar se a mensagem esta visivel    Account Created!
    Clicar em Continue
    Verificar se a mensagem esta visivel     Logged in as ${nome}