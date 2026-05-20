*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Gerar nome fake
    ${nome}    FakerLibrary.Name
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
    ${password}    FakerLibrary.Password
    RETURN    ${password} 

Gerar data de aniversario
    ${dia}    FakerLibrary.Day Of Month
    ${mes}    FakerLibrary.Month Name
    
    ${ano_atual}    Get Time    year
    ${ano_maximo}   Evaluate    ${ano_atual} - 19
    ${ano_minimo}   Evaluate    ${ano_atual} - 120 
    ${ano}=          FakerLibrary.Random Int    ${ano_minimo}    ${ano_maximo}

    RETURN    ${dia}    ${mes}    ${ano}

Gerar Informações Endereco
    ${nome}             FakerLibrary.First Name
    ${sobrenome}        FakerLibrary.Last Name
    ${rua}              FakerLibrary.Street Address
    ${pais}             Gerar Pais 
    ${estado}           FakerLibrary.State  
    ${cidade}           FakerLibrary.City
    ${codigo_postal}    FakerLibrary.Zipcode
    ${telefone}         FakerLibrary.Phone Number

    RETURN    ${nome}    ${sobrenome}    ${rua}    ${pais}    ${estado}    
    ...    ${cidade}    ${codigo_postal}    ${telefone}  

Gerar Pais
    ${paises}    Create List    India	United States	Canada	
    ...	Australia	Israel	New Zealand	Singapore
    ${pais}     Evaluate    random.choice($paises)    random
    RETURN    ${pais} 


    