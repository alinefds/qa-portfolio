*** Settings ***

Resource    ../resources/utils.robot
Resource    ../resources/keywords/login_keyword.robot

Suite Setup        Abrir o navegador
Suite Teardown    Fechar o navegador

# *** Test Cases ***
# Cenário: Login válido
#     Acessar ao site "Automation Exercise"
#     Clicar na opção do menu Signup/Login
#     Verificar se a pagina de login esta visivel
#     # Preencher o campo Email Address    ${EMAIL}     
#     # Preencher o campo Password    ${SENHA}    
#     Clicar no botão Login
#     Verificar se a mensagem esta visivel     Logged in as