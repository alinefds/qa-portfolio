*** Settings ***

Resource    ../../resources/utils.robot

*** Keywords ***

Acessar ao site "${TITULO}"
    Wait Until Page Contains    ${TITULO} 
    Title Should Be    ${TITULO}

Clicar na opção do menu Signup/Login
    Wait Until Element Is Visible        ${MENU_HOME_LOGIN}
    Click Element    ${MENU_HOME_LOGIN}


