*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Verificar se a mensagem esta visivel
    [Arguments]     ${MENSAGEM}  
    Fechar anuncio iframe  
    Wait Until Page Contains    ${MENSAGEM}

Deletar conta criada
    Fechar anuncio iframe
    Click Element    ${BTN_DELETE_ACCOUNT}
    Fechar anuncio iframe
    Verificar se a mensagem esta visivel    Your account has been permanently deleted!
    Fechar anuncio iframe
    Click Element    ${BTN_CONTINUE}

Fechar anuncio iframe
    ${iframe_existe}=    
    ...    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    aswift_2

    IF    ${iframe_existe}

        Select Frame    aswift_2

        Run Keyword And Ignore Error
        ...    Click Element
        ...    xpath=//div[@id='dismiss-button']

        Unselect Frame

    END