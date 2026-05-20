*** Settings ***

Resource    ../utils.robot

*** Variables ***
${NOVO_NOME}              //input[@data-qa='signup-name'] 
${NOVO_EMAIL}             //input[@data-qa='signup-email']
${BTN_SIGNUP}             //button[@data-qa='signup-button']
${MALE}                   id_gender1
${FEMALE}                 id_gender2
${NOME_PREENCHIDO}        //input[@id='name']
${EMAIL_PREENCHIDO}       //input[@id='email']
${NOVO_PASSWORD}          id=password
