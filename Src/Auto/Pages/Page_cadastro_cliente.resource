*** Settings ***



*** keywords ***


#Cenário 1#

Aguardar o botão Registrar esteja visível
    Wait Until Element Is Visible  xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[3]/button[2]

Deve poder clicar no botão Registrar
    Click Button      xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[3]/button[2]

Aguardar o elemento de texto email esteja visível
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[2]/input

Deve poder digitar no campo Nome
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[3]/input    Maycon

Deve poder digitar no campo Senha
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[4]/div/input    Maycon@123
    sleep    2s
Deve poder digitar no campo Confirmação de senha
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[5]/div/input    Maycon@123
    sleep    2s

Deve poder clicar no botão Cadastrar
    Execute JavaScript    document.evaluate("//button[text()='Cadastrar']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()

 Deve validar a mensagem de retorno no email É campo obrigatório
    Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[2]/p    É campo obrigatório
    

#Cenário 2#

Deve poder digitar no campo Email
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[2]/input    mayconc@yopmail.com
    Sleep    2s

Deve validar a mensagem de retorno no nome É campo obrigatório
    Wait Until Element Contains    xpath=//*[@id="modalText"]   Nome não pode ser vazio.


#Cenário 3#

Deve validar a mensagem de retorno na senha Nome É campo obrigatório
     Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[4]/div/p    É campo obrigatório


#Cenário 4#

Deve validar a mensagem de retorno na confirmação de senha É campo obrigatório
     Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[5]/div/p    É campo obrigatório


#Cenário 5#

Deve poder digitar no campo Email com valor inválido
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[2]/input    mayconc@abc
    Sleep    2s

Deve validar a mensagem de retorno Formato inválido
     Wait Until Element Contains    xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[2]/p    Formato inválido

#Cenário 6#

Deve poder digitar no campo Confirmação de senha diferente
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[5]/div/input    senhadiferente
    sleep    2s

Deve validar a mensagem de retorno As senhas não são iguais
    Wait Until Element Contains    xpath=//*[@id="modalText"]    As senhas não são iguais.



#Cenário 7# 

Deve validar a mensagem de retorno Conta criada com sucesso
    Wait Until Element Contains    xpath=//*[@id="modalText"]    criada com sucesso

Deve poder clicar no botão fechar de conta criada
    Click Element      xpath=//*[@id="btnCloseModal"]

Deve poder logar na conta cadastrada
    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/input    mayconc@yopmail.com

    Input Text   xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[2]/div/input    Maycon@123

    Click Button      xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[3]/button[1]


Deve poder validar o valor do saldo que deve ser 0
    Wait Until Element Contains    xpath=//*[@id="textBalance"]/span    0,00



#Cenário 7# 


Deve poder habilitar a flag conta com saldo
    Click Element    xpath=//*[@id='toggleAddBalance']

Deve poder validar o valor do saldo que deve ser 1000
    Wait Until Element Contains    xpath=//*[@id="textBalance"]/span    1.000,00