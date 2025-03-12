*** Settings ***



*** keywords ***


#Cenário 1#
Aguardar o elemento de texto senha esteja visível 
    Wait Until Element Is Visible  xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[2]/div/input

Deve poder digitar no campo Senha
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[2]/div/input    Maycon@123

Deve poder clicar no botão Acessar
    Click Button      xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[3]/button[1]
    Sleep    2s

Deve validar a mensagem de retorno no email É campo obrigatório
    Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/p    É campo obrigatório
    sleep    3s

#Cenário 2#

Aguardar o elemento de texto email esteja visível 
    Wait Until Element Is Visible  xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/input

Deve poder digitar no campo Email
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/input    mayconcuisci@yopmail.com


Deve validar a mensagem de retorno na senha É campo obrigatório
    Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[2]/div/p    É campo obrigatório
    sleep    2s

#Cenário 3# 

Deve poder digitar no campo Email com valor inválido 
     Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/input    mayconcuisci@teste

Deve validar a mensagem de retorno no email Formato inválido
     Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/p    Formato inválido
     sleep    2s

#Cenário 4# 

Deve validar a mensagem de retorno Usuário ou senha inválido
    Wait Until Element Contains    xpath=//*[@id="modalText"]    Tente novamente ou verifique suas informações!
    Sleep    2s

#Cenário 5# 
    
Deve poder digitar no campo email de usuario cadastrado
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/input    mayconc@yopmail.com

Deve poder digitar no campo senha de usuario cadastrado
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[2]/div/input    Maycon@123

Deve validar acesso de login
    Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[2]/p[2]    bem vindo ao BugBank

