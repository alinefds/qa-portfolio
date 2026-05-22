*** Settings ***

Resource    ../resources/utils.robot
Resource    ../resources/keywords/login_keyword.robot

Suite Setup        Abrir o navegador
Suite Teardown    Fechar o navegador

Test Teardown    Deletar conta criada

*** Test Cases ***
Cenário: Login válido
    Validar página    Automation Exercise
    Clicar em Signup/Login
    Verificar se a mensagem esta visivel    Login to your account
    Preencher dados de login
    # Clicar em Signup    
    # Clicar no botão Login
    # Verificar se a mensagem esta visivel     Logged in as