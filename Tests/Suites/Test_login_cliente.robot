*** Settings ***
Documentation        Cadastro de clientes

Resource        ../../Src/Configs/Hooks.resource
Resource        ../../Src/Auto/Pages/Page_login_cliente.resource

Test Setup        Abrir navegador
Test Teardown     Fechar navegador  


*** Test Cases ***

Cenário de teste 01: Validando realizar o login sem informar o campo email
	Aguardar o elemento de texto senha esteja visível 
	Deve poder digitar no campo Senha
	Deve poder clicar no botão Acessar
	Deve validar a mensagem de retorno no email É campo obrigatório

Cenário de teste 02: Validando realizar o login sem informar o campo senha
	Aguardar o elemento de texto email esteja visível
	Deve poder digitar no campo Email
	Deve poder clicar no botão Acessar
	Deve validar a mensagem de retorno na senha É campo obrigatório

Cenário de teste 03: Validando realizar o login com email em formato inválido
	Aguardar o elemento de texto email esteja visível
	Deve poder digitar no campo Email com valor inválido 
    Deve poder digitar no campo Senha
    Deve poder clicar no botão Acessar
	Deve validar a mensagem de retorno no email Formato inválido

Cenário de teste 04: Validando realizar o login com usuario invalido ou não cadastrado
    Aguardar o elemento de texto email esteja visível
    Deve poder digitar no campo Email
    Deve poder digitar no campo Senha
	Deve poder clicar no botão Acessar
	Deve validar a mensagem de retorno Usuário ou senha inválido


Cenário de teste 05: Validando realizar o login com usuario
    Aguardar o elemento de texto email esteja visível
    Deve poder digitar no campo email de usuario cadastrado
    Deve poder digitar no campo senha de usuario cadastrado
	Deve poder clicar no botão Acessar
	Deve validar acesso de login
