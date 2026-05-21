*** Settings ***

Resource    ../../resources/utils.robot

*** Keywords ***

Validar página
    [Arguments]    ${titulo}
    Wait Until Element Is Visible    ${MENU_HOME_LOGIN}
    Title Should Be             ${titulo}

Clicar em Signup/Login
    Clicar no botão   ${MENU_HOME_LOGIN}