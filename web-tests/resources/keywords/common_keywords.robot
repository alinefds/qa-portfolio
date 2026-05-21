*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Verificar se a mensagem esta visivel
    [Arguments]     ${MENSAGEM}  
    Fechar anuncio iframe  
    Wait Until Page Contains    ${MENSAGEM}

Deletar conta criada
     ${usuario_logado}
    ...    Run Keyword And Return Status
    ...    Page Should Contain
    ...    Logged in as

    IF    ${usuario_logado}

    Clicar no botão    ${BTN_DELETE_ACCOUNT}
    Verificar se a mensagem esta visivel    
    ...    Your account has been permanently deleted!
    Clicar no botão    ${BTN_CONTINUE}

    END

Fechar anuncio iframe
    ${iframe_existe}    
    ...    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    aswift_2

    IF    ${iframe_existe}

        Select Frame    aswift_2

        Run Keyword And Ignore Error
        ...    Click Element
        ...    xpath=//div[@id='dismiss-button']

        Unselect Frame

    END

Preencher campo
    [Arguments]    ${locator}    ${texto}

    Wait Until Element Is Visible    ${locator}
    Clear Element Text               ${locator}
    Input Text                       ${locator}    ${texto}

Selecionar checkbox
    [Arguments]    ${locator}

    ${marcado}    Get Element Attribute
    ...    ${locator}
    ...    checked

    IF    not ${marcado}
        Scroll Element Into View    ${locator}
        Click Element               ${locator}
    END

Clicar no botão
    [Arguments]    ${locator}

    Fechar anuncio iframe

    Wait Until Element Is Visible    ${locator}
    Scroll Element Into View    ${locator}
    Wait Until Element Is Enabled   ${locator}

    Click Element    ${locator}

Validar valor do campo
    [Arguments]    ${locator}    ${valor_esperado}

    ${valor_atual}=    Get Value    ${locator}

    Should Be Equal As Strings
    ...    ${valor_esperado}
    ...    ${valor_atual}

Selecionar valor da lista
    [Arguments]    ${locator}    ${valor}

    Wait Until Element Is Visible    ${locator}
    Select From List By Label        ${locator}    ${valor}