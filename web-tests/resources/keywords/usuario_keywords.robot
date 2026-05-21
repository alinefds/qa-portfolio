*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Gerar nome fake
    ${nome}    Name
    RETURN    ${nome}

Gerar email fake
    ${timestamp}    Get Time    epoch
    ${email}    Set Variable    teste${timestamp}@email.com
    RETURN    ${email} 

Gerar genero aleatorio
    ${generos}    Create List    male    female
    ${genero}     Evaluate    random.choice($generos)    random

    RETURN    ${genero}

Gerar password aleatorio
    ${password}   Password
    RETURN    ${password} 

Gerar data de aniversario
    ${dia}    Day Of Month
    ${mes}    Month Name
    
    ${ano_atual}    Get Time    year
    ${ano_mais_recente}   Evaluate    ${ano_atual} - 19
    ${ano_minimo}   Evaluate    ${ano_atual} - 120 
    ${ano}         Random Int    ${ano_minimo}    ${ano_mais_recente}

    RETURN    ${dia}    ${mes}    ${ano}

Gerar Informações Endereco
    ${nome}             First Name
    ${sobrenome}        Last Name
    ${rua}              Street Address
    ${pais}             Gerar Pais 
    ${estado}           State  
    ${cidade}           City
    ${codigo_postal}    Zipcode
    ${telefone}         Phone Number

    RETURN    ${nome}    ${sobrenome}    ${rua}    ${pais}    ${estado}    
    ...    ${cidade}    ${codigo_postal}    ${telefone}  

Gerar Pais
    ${paises}    Create List    India	United States	Canada	
    ...	Australia	Israel	New Zealand	Singapore
    ${pais}     Evaluate    random.choice($paises)    random
    RETURN    ${pais} 


    