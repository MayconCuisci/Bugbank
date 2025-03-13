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

Aguardar o botão Registrar esteja visível (validação de login)
    Wait Until Element Is Visible  xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[3]/button[2]

Deve poder clicar no botão Registrar (validação de login)
    Click Button      xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[3]/button[2]

Deve poder digitar no campo Email (validação de login)
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[2]/input    mayconc@yopmail.com
    Sleep    2s

Deve poder digitar no campo Nome (validação de login)
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[3]/input    Maycon

Deve poder digitar no campo Senha (validação de login)
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[4]/div/input    Maycon@123
    sleep    2s
Deve poder digitar no campo Confirmação de senha (validação de login)
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[5]/div/input    Maycon@123
    sleep    2s

Deve poder clicar no botão Cadastrar (validação de login)
    Execute JavaScript    document.evaluate("//button[text()='Cadastrar']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
    sleep    2s
Deve poder clicar no botão fechar de conta criada (validação de login)
    Click Element      xpath=//*[@id="btnCloseModal"]
    
Deve poder digitar no campo email de usuario cadastrado
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/input    mayconc@yopmail.com

Deve poder digitar no campo senha de usuario cadastrado
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[2]/div/input    Maycon@123

Deve validar acesso de login
    Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[2]/p[2]    bem vindo ao BugBank

