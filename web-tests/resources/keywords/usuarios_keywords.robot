*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Gerar usuário fake

    ${generos}=    Create List    male    female
    ${genero}=     Evaluate    random.choice($generos)    random

    IF    '${genero}' == 'male'
        ${nome}=    FakerLibrary.First Name Male
    ELSE
        ${nome}=    FakerLibrary.First Name Female
    END

    ${email}=    FakerLibrary.Email

    RETURN    ${nome}    ${email}