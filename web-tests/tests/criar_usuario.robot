*** Settings ***

Resource    ../resources/utils.robot

Suite Setup        Abrir o navegador
Suite Teardown    Fechar o navegador

*** Test Cases ***
Cenário: Criar Registro de Novo Usuario com Sucesso
    Acessar ao site "Automation Exercise"
    Clicar na opção do menu Signup/Login
    Verificar se a mensagem esta visivel    New User Signup!
    ${nome}    ${email}    Preencher nome e email
    Clicar no botão Signup 
    Verificar se a mensagem esta visivel    Enter Account Information
    Selecionar gênero
    Verificar se os campos nome e email estão preenchidos corretamente    
    ...    ${nome}    
    ...    ${email}         