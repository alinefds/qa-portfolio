*** Settings ***
Library        DebugLibrary
Library        SeleniumLibrary
Library        ScreenCapLibrary
Library        FakerLibrary

# fixtures
Resource        ../resources/fixtures/setup.robot

# keywords
Resource        ../resources/keywords/cadastro_keyword.robot
Resource        ../resources/keywords/common_keywords.robot
Resource        ../resources/keywords/home_keyword.robot
Resource        ../resources/keywords/login_keyword.robot
Resource        ../resources/keywords/usuario_keywords.robot

# pages
Resource        ../resources/pages/account_page.robot
Resource        ../resources/pages/login_page.robot
Resource        ../resources/pages/home_page.robot
Resource        ../resources/pages/cadastro_page.robot

# variables
Resource        ../resources/variables/urls.robot
Resource        ../resources/variables/browsers.robot
Resource        ../resources/variables/massa_dados.robot







