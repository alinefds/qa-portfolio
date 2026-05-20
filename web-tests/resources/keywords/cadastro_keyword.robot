*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Preencher nome e email
    ${nome}     Gerar nome fake   
    ${email}    Gerar email fake

    Input Text    ${NOVO_NOME}     ${nome}
    Input Text    ${NOVO_EMAIL}    ${email}

    RETURN    ${nome}    ${email}



Clicar no botão Signup 
    Click Button    ${BTN_SIGNUP}

Selecionar gênero
    ${genero}    Gerar genero aleatorio

    IF    '${genero}' == 'male'
        Click Button    ${MALE}  
    ELSE
        Click Button    ${FEMALE}
    END

Verificar se os campos nome e email estão preenchidos corretamente
    [Arguments]    ${nome_esperado}    ${email_esperado}

    ${nome_preenchido}     Get Value    ${NOME_PREENCHIDO}
    ${email_preenchido}    Get Value    ${EMAIL_PREENCHIDO}

    Should Be Equal As Strings
    ...    ${nome_esperado}
    ...    ${nome_preenchido}

    Should Be Equal As Strings
    ...    ${email_esperado}
    ...    ${email_preenchido}    

Inserir nova senha
    ${nova_senha}    Gerar password aleatorio
    Input Text    ${NOVO_PASSWORD}    ${nova_senha}
    RETURN     ${nova_senha}
    
