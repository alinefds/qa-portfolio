*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Gerar nome fake
    ${nome}    FakerLibrary.First Name
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
    