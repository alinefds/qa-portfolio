*** Settings ***

Resource    ../utils.robot

*** Keywords ***



Verificar se a pagina de login esta visivel
    Location Should Be    ${URL_LOGIN}

Criar Conta
    Validar página    Automation Exercise - Signup / Login
    Clicar em Signup/Login
    Verificar se a mensagem esta visivel    New User Signup!
    ${nome}    ${email}    Preencher dados de cadastro
    Clicar em Signup 
    Verificar se a mensagem esta visivel    Enter Account Information
    Selecionar gênero
    Validar dados pré-preenchidos nome e email
    ...    ${nome}    
    ...    ${email}
    ${senha}    Preencher senha
    Preencher data de aniversario
    Selecionar newsletter
    Selecionar ofertas especiais
    Verificar se a mensagem esta visivel    Address Information
    Preencher as Informações de endereço
    Clicar em Create Account
    Verificar se a mensagem esta visivel    Account Created!
    Clicar em Continue
    Verificar se a mensagem esta visivel     Logged in as ${nome}


Preencher dados de login    
    Criar Conta
    
      



    

