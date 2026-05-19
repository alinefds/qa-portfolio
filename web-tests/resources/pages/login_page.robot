*** Settings ***

Resource    ../utils.robot

*** Variables ***
${EMAIL}        //input[@data-qa='login-email']     
${PASSWORD}     //input[@data-qa='login-password']       
${BTN_LOGIN}          //button[@data-qa='login-button']
${NOME}         //input[@data-qa='signup-name'] 

${EMAIL_CADASTRO}        //input[@data-qa='signup-email']