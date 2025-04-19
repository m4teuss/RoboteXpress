*** Settings ***
Documentation    Cénarios de testes do cadastro de usuários 

Resource    ../resources/base.robot
Library    FakerLibrary


*** Test Cases ***
Deve poder cadastrar um novo usuário
   
   # Criando varieveis e inserindo valores fakers
   ${name}        FakerLibrary.Name
   ${email}       FakerLibrary.Email
    
   # Criando "Password" e inserindo valor  
   ${password}        Set Variable    123456    
   

    # Abre a pagina principal 
    Start Session

    # Abre uma pagina especifica
    Go To        http://localhost:3000/signup

    # Checkpoint (validando os passos do fluxo)
    Wait For Elements State    css=h1    visible   5
   
    # validando se frase da tela é "faça seu cadastro"
    Get Text                   css=h1    equal     Faça seu cadastro

    # preencher campo com texto
    Fill Text    id=name         ${name}
    Fill Text    id=email        ${email}    
    Fill Text    id=password     ${password}
    Click        id=buttonSignup 
    
    # Texto na tela e tem que estar visivel em até 5s
    Wait For Elements State    css=.notice p     visible    5
    # Validar o texto 
    Get Text    css=.notice p    equal     Boas vindas ao Mark85, o seu gerenciador de tarefas.


