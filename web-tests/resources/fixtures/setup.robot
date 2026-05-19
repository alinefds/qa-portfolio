*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Abrir o navegador
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Delete All Cookies
    # Start Video Recording

Fechar o navegador
    # Capture Page Screenshot
    Close All Browsers