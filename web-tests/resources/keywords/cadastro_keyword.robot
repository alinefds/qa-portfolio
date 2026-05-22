*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Preencher dados de cadastro
    ${nome}     Gerar nome fake   
    ${email}    Gerar email fake

    Preencher campo    ${NOVO_NOME}     ${nome}
    Preencher campo    ${NOVO_EMAIL}    ${email}

    RETURN    ${nome}    ${email}



Clicar em Signup 
    Clicar no botão    ${BTN_SIGNUP}

Selecionar gênero
    ${genero}    Gerar genero aleatorio

    IF    $genero == 'male'
        Clicar no botão    ${MALE}  
    ELSE
        Clicar no botão    ${FEMALE}
    END

Validar dados pré-preenchidos nome e email
    [Arguments]    ${nome_esperado}    ${email_esperado}

    Validar valor do campo
    ...    ${NOME_PREENCHIDO}
    ...    ${nome_esperado}

    Validar valor do campo
    ...    ${EMAIL_PREENCHIDO}
    ...    ${email_esperado}  

Preencher senha
    ${nova_senha}    Gerar password aleatorio
    Preencher campo    ${NOVO_PASSWORD}    ${nova_senha}
    RETURN     ${nova_senha}
    
Preencher data de aniversario
    ${dia}    ${mes}    ${ano}    Gerar data de aniversario
    ${dia}    Convert To Integer    ${dia}
    Selecionar valor da lista     ${SELECT_DIA}    ${dia}
    Selecionar valor da lista     ${SELECT_MES}    ${mes}
    Selecionar valor da lista     ${SELECT_ANO}    ${ano}
    
    RETURN    ${dia}    ${mes}    ${ano}

Selecionar newsletter
    Clicar no botão   ${SELECT_NEWSLETTER}

Selecionar ofertas especiais
    Clicar no botão   ${SELECT_OFERTAS}
    
Preencher as Informações de endereço
    ${nome}    ${sobrenome}    ${rua}    ${pais}    ${estado}    
    ...    ${cidade}    ${codigo_postal}    ${telefone}    Gerar Informações Endereco
    Preencher campo               ${END_NOME}         ${nome} 
    Preencher campo               ${END_SOBRENOME}    ${sobrenome} 
    Preencher campo               ${END_ENDERECO}     ${rua}  
    Selecionar valor da lista     ${END_PAIS}         ${pais} 
    Preencher campo               ${END_ESTADO}       ${estado}   
    Preencher campo               ${END_CIDADE}       ${cidade} 
    Preencher campo               ${END_COD_POSTAL}   ${codigo_postal}  
    Preencher campo               ${END_TEL_PHONE}    ${telefone}  

    RETURN    ${nome}    ${sobrenome}    ${rua}    ${pais}    ${estado}    
    ...    ${cidade}    ${codigo_postal}    ${telefone} 
    
Clicar em Create Account
    Clicar no botão   ${BTN_CREATE_ACCOUNT}

Clicar em Continue
    Clicar no botão   ${BTN_CONTINUE}

