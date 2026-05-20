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
    
Preencher data de aniversario
    ${dia}    ${mes}    ${ano}    Gerar data de aniversario
    ${dia}    Convert To Integer    ${dia}
    Select From List By Label    ${SELECT_DIA}    ${dia}
    Select From List By Label    ${SELECT_MES}    ${mes}
    Select From List By Label    ${SELECT_ANO}    ${ano}
    
    RETURN    ${dia}    ${mes}    ${ano}

Selecionar a caixa de seleção Inscreva-se em nossa newsletter!
    Scroll Element Into View    ${SELECT_NEWSLETTER}
    Click Element   ${SELECT_NEWSLETTER}

Selecionar a caixa de seleção Receive special offers from our partners! 
    Scroll Element Into View    ${SELECT_OFERTAS}
    Click Element    ${SELECT_OFERTAS}
    
Preencher as Informações de endereço
    ${nome}    ${sobrenome}    ${rua}    ${pais}    ${estado}    
    ...    ${cidade}    ${codigo_postal}    ${telefone}    Gerar Informações Endereco
    Input Text                    ${END_NOME}         ${nome} 
    Input Text                    ${END_SOBRENOME}    ${sobrenome} 
    Input Text                    ${END_ENDERECO}     ${rua}  
    Select From List By Label     ${END_PAIS}         ${pais} 
    Input Text                    ${END_ESTADO}       ${estado}   
    Input Text                    ${END_CIDADE}       ${cidade} 
    Input Text                    ${END_COD_POSTAL}   ${codigo_postal}  
    Input Text                    ${END_TEL_PHONE}    ${telefone}  

    RETURN    ${nome}    ${sobrenome}    ${rua}    ${pais}    ${estado}    
    ...    ${cidade}    ${codigo_postal}    ${telefone} 
    
Clicar no botão Create Account
    Scroll Element Into View    ${BTN_CREATE_ACCOUNT}
    Click Button    ${BTN_CREATE_ACCOUNT}

Clicar no botão Continue
    Fechar anuncio iframe
    Scroll Element Into View    ${BTN_CONTINUE}
    Click Element    ${BTN_CONTINUE}

