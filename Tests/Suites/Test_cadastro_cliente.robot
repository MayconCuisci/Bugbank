*** Settings ***
Documentation        Cadastro de clientes

Resource        ../../Src/Configs/Hooks.resource
Resource        ../../Src/Auto/Pages/Page_cadastro_cliente.resource

Test Setup        Abrir navegador
Test Teardown     Fechar navegador  


*** Test Cases ***

Cenário de teste 01: Validando realizar o cadastro sem informar o campo email
    Aguardar o botão Registrar esteja visível
    Deve poder clicar no botão Registrar
    Aguardar o elemento de texto email esteja visível
    Deve poder digitar no campo Nome
    Deve poder digitar no campo Senha
    Deve poder digitar no campo Confirmação de senha
    Deve poder clicar no botão Cadastrar
    Deve validar a mensagem de retorno no email É campo obrigatório



Cenário de teste 02: Validando realizar o cadastro sem informar o campo Nome

    Aguardar o botão Registrar esteja visível
    Deve poder clicar no botão Registrar
    Aguardar o elemento de texto email esteja visível
    Deve poder digitar no campo Email
    Deve poder digitar no campo Senha
    Deve poder digitar no campo Confirmação de senha
    Deve poder clicar no botão Cadastrar
    Deve validar a mensagem de retorno no nome É campo obrigatório



Cenário de teste 03: Validando realizar o cadastro sem informar o campo Senha

    Aguardar o botão Registrar esteja visível
    Deve poder clicar no botão Registrar
    Aguardar o elemento de texto email esteja visível
    Deve poder digitar no campo Email
    Deve poder digitar no campo Nome
    Deve poder digitar no campo Confirmação de senha
    Deve poder clicar no botão Cadastrar
    Deve validar a mensagem de retorno na senha Nome É campo obrigatório

Cenário de teste 04: Validando realizar o cadastro sem informar o campo Confirmação de senha

    Aguardar o botão Registrar esteja visível
    Deve poder clicar no botão Registrar
    Aguardar o elemento de texto email esteja visível
    Deve poder digitar no campo Email
    Deve poder digitar no campo Nome
    Deve poder digitar no campo Senha
    Deve poder clicar no botão Cadastrar
    Deve validar a mensagem de retorno na confirmação de senha É campo obrigatório
    
Cenário de teste 05: Validando realizar o cadastro com email em formato inválido
    Aguardar o botão Registrar esteja visível
    Deve poder clicar no botão Registrar
    Aguardar o elemento de texto email esteja visível 
    Deve poder digitar no campo Email com valor inválido 
    Deve poder digitar no campo Nome
    Deve poder digitar no campo Senha
    Deve poder digitar no campo Confirmação de senha
    Deve poder clicar no botão Cadastrar
    Deve validar a mensagem de retorno Formato inválido
    
Cenário de teste 06: Validando se os campos Senha e Confirmação de senha são iguais

    Aguardar o botão Registrar esteja visível
    Deve poder clicar no botão Registrar
    Aguardar o elemento de texto email esteja visível 
    Deve poder digitar no campo Email
    Deve poder digitar no campo Nome
    Deve poder digitar no campo Senha
    Deve poder digitar no campo Confirmação de senha diferente
    Deve poder clicar no botão Cadastrar
    Deve validar a mensagem de retorno As senhas não são iguais
    
Cenário de teste 07: Validando realizar o cadastro a opção Criar conta com saldo desabilitada

    Aguardar o botão Registrar esteja visível
    Deve poder clicar no botão Registrar
    Aguardar o elemento de texto email esteja visível 
    Deve poder digitar no campo Email
    Deve poder digitar no campo Nome
    Deve poder digitar no campo Senha
    Deve poder digitar no campo Confirmação de senha
    Deve poder clicar no botão Cadastrar
    Deve validar a mensagem de retorno Conta criada com sucesso
    Deve poder clicar no botão fechar de conta criada
    Deve poder logar na conta cadastrada
    Deve poder validar o valor do saldo que deve ser 0
    
Cenário de teste 08: Validando realizar o cadastro a opção Criar conta com saldo habilitada

    Aguardar o botão Registrar esteja visível
    Deve poder clicar no botão Registrar
    Aguardar o elemento de texto email esteja visível 
    Deve poder digitar no campo Email
    Deve poder digitar no campo Nome
    Deve poder digitar no campo Senha
    Deve poder digitar no campo Confirmação de senha
    Deve poder habilitar a flag conta com saldo
    Deve poder clicar no botão Cadastrar
    Deve validar a mensagem de retorno Conta criada com sucesso
    Deve poder clicar no botão fechar de conta criada
    Deve poder logar na conta cadastrada
    Deve poder validar o valor do saldo que deve ser 1000