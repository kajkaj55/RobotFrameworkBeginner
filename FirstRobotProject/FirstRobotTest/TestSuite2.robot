*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${url}                  https://opensource-demo.orangehrmlive.com/        # SCALAR
@{CREDENTIALS}          Admin    admin123                                 # List
&{LOGINDATA}            username=Admin    password=admin123               # Dictionary

*** Keywords ***
LogiKW
    Input Text                   id=txtUsername    @{CREDENTIALS}[0]
    Input Password               id=txtPassword    &{LOGINDATA}[password]
    Click Button                 id=btnLogin  
    
SampleLoginTest
    [Documentation]    this is a simple LoginTest
    Open Browser                 ${url}    chrome
    Set Browser Implicit Wait    5
    #Input Text                   id=txtUsername    Admin
    #Input Password               id=txtPassword    admin123
    #Input Text                   id=txtUsername    @{CREDENTIALS}[0]
    #Input Password               id=txtPassword    &{LOGINDATA}[password]
    #Click Button                 id=btnLogin  
    Logikw 
    Click Element                id=welcome
    Click Element                link=Logout
    Close Browser
    Log                          Test completed            
     