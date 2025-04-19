*** Settings ***

Library    Browser

*** Keywords ***
Start Session 
     New Browser    browser=chromium    headless=false
     New Page    http://localhost:3000