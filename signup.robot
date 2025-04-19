*** Settings ***
Documentation    Cénarios de testes do cadastro de usuários 

Library    Browser

*** Test Cases ***
Deve poder cadastrar um novo usuário
    New Browser    browser=chromium    headless=False
    New Page    http://localhost:3000/signup

    # Checkpoint (validando os passos do fluxo)
    Wait For Elements State    css=h1    visible   5
   
   # validando se frase da tela é "faça seu cadastro"
    Get Text                   css=h1    equal     Faça seu cadastro

    # preencher campo com texto
    Fill Text    id=name         Mateus
    Fill Text    id=email        mateus@gmail.com    
    Fill Text    id=password     123456




    Sleep        5

