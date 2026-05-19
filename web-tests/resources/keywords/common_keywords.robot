*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Verificar se a mensagem esta visivel
    [Arguments]     ${MENSAGEM}    
    Wait Until Page Contains    ${MENSAGEM}