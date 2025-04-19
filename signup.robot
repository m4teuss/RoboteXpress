*** Settings ***
Documentation    Cénarios de testes do cadastro de usuários 

Library    Browser
Library    FakerLibrary


*** Test Cases ***
Deve poder cadastrar um novo usuário
   
   # Criando varieveis e inserindo valores fakers
   ${name}        FakerLibrary.Name
   ${email}       FakerLibrary.Email
    
   # Criando "Password" e inserindo valor  
   ${password}        Set Task Variable    123456    
   



    New Browser    browser=chromium    headless=False
    New Page    http://localhost:3000/signup

    # Checkpoint (validando os passos do fluxo)
    Wait For Elements State    css=h1    visible   5
   
    # validando se frase da tela é "faça seu cadastro"
    Get Text                   css=h1    equal     Faça seu cadastro

    # preencher campo com texto
    Fill Text    id=name         ${name}
    Fill Text    id=email        ${email}    
    Fill Text    id=password     ${password}
    Click        id=buttonSignup 



    Sleep        5

