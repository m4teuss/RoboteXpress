*** Settings ***
Documentation        Online

Library        Browser


*** Test Cases ***
Webapp deve estar Online
    
    New Browser    browser=chromium    headless=false
    New Page    http://localhost:3000
    Get Title    equal     Mark85 by QAx
    Sleep    10

