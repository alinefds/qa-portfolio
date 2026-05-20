*** Settings ***

Resource    ../resources/utils.robot

Suite Setup        Abrir o navegador
Suite Teardown    Fechar o navegador

Test Teardown    Deletar conta criada

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
    Inserir nova senha
    Preencher data de aniversario
    Selecionar a caixa de seleção Inscreva-se em nossa newsletter!
    Selecionar a caixa de seleção Receive special offers from our partners! 
    Verificar se a mensagem esta visivel    Address Information
    Preencher as Informações de endereço
    Clicar no botão Create Account
    Verificar se a mensagem esta visivel    Account Created!
    Clicar no botão Continue
    Verificar se a mensagem esta visivel     Logged in as
    Sleep    5
    
