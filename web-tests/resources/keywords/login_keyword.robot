*** Settings ***

Resource    ../utils.robot

*** Keywords ***



Verificar se a pagina de login esta visivel
    Location Should Be    ${URL_LOGIN}

  

Preencher o campo Password
    [Arguments]    ${password}  
    Input Text    ${PASSWORD}    ${password} 

Clicar no botão Login
    Click Button    ${BTN_LOGIN}

Preencher o campo Name
    ${nome}=    Gerar usuário fake
    Input Text    ${NOME}    ${nome}
    RETURN      ${nome}

Preencher o campo Email Address
    ${email}=    Gerar usuário fake
    Input Text    ${EMAIL_CADASTRO}    ${email} 
    RETURN      ${email}
    
      



    

