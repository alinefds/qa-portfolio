*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Gerar nome e email
    ${nome}    FakerLibrary.Name  
    ${email}     FakerLibrary.Email  
    RETURN   ${nome}    ${email}

Gerar genero aleatorio
    ${generos}=    Create List    male    female
    ${genero}=     Evaluate    random.choice($generos)    random

    RETURN    ${genero}
    