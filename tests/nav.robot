***Settings***
#informa de onde vou importar as configurações
Resource    ../resources/base.robot

#Executa a key word antes de cada testcase
Test Setup    Open Session
#Executa a key word depois de cada testcase
Test Teardown    Close Session

***Variables***
${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle    

***Test Cases***
Acessar tela Dialogs

    Open Nav    

    Click Text                       DIALOGS             
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}    
    Element Text Should Be           ${TOOLBAR_TITLE}    DIALOGS


Acessar tela Forms

    Open Nav    

    Click Text                       FORMS               
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}    
    Element Text Should Be           ${TOOLBAR_TITLE}    FORMS


Acessar tela Vingadores

    Open Nav

    Click Text                       AVENGERS            
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}    
    Element Text Should Be           ${TOOLBAR_TITLE}    AVENGERS
