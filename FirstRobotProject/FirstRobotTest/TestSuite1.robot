*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
FirstSeleniumTest
    Open Browser    https://www.google.de    chrome    
    Set Browser Implicit Wait    5
    Input Text    name=q    kadjdahi
    Press Keys    name=q    ENTER  
    #Click Button    name=btnK    
    sleep    2
    Close Browser
     
     