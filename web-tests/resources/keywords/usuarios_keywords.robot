*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Gerar usuário fake

    ${nome}=    FakerLibrary.First Name
    ${email}=     FakerLibrary.Email
    RETURN   ${nome}    ${email}