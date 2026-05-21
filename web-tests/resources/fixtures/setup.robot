*** Settings ***

Resource    ../utils.robot

*** Keywords ***

Abrir o navegador
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage


    ${prefs}    Create Dictionary
    ...    autofill.profile_enabled=${False}
    ...    credentials_enable_service=${False}
    ...    profile.password_manager_enabled=${False}

    Call Method    ${options}    add_experimental_option    prefs    ${prefs}

    Open Browser
    ...    ${URL}
    ...    ${BROWSER}
    ...    options=${options}

    Maximize Browser Window
    Delete All Cookies
    # Start Video Recording

Fechar o navegador
    Capture Page Screenshot
    Close All Browsers