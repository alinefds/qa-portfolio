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
${NOVO_PASSWORD}          password
${SELECT_DIA}             //select[@id='days']
${SELECT_MES}             //select[@id='months']
${SELECT_ANO}             //select[@id='years']
${SELECT_NEWSLETTER}      newsletter
${SELECT_OFERTAS}         optin

${END_NOME}              first_name
${END_SOBRENOME}         last_name
${END_ENDERECO}          address1
${END_PAIS}              country
${END_ESTADO}            state
${END_CIDADE}            city
${END_COD_POSTAL}        zipcode
${END_TEL_PHONE}         mobile_number

${BTN_CREATE_ACCOUNT}    //button[@data-qa='create-account']


