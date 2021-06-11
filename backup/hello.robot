***Settings***
Library    hello.py

***Test Cases***

Deve retornar mensagem de boas vindas
    ${resultado} =     Hello Robot     Eduardo
    Should Be Equal    ${resultado}    Olá, Eduardo.