*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Insira o nome e o email
    ${nome}    ${email}=    Gerar usuário fake
    Input Text    ${NOVO_NOME}               ${nome}
    Input Text    ${NOVO_EMAIL}    ${email}


Clicar no botão Signup 
    Click Button    ${BTN_SIGNUP}
