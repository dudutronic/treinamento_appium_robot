***Settings***

Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

***Test Cases***
Deve realizar um clique simples
    [tags]               short_click
    Go To Short Click

    ${element} =    Set Variable    xpath=//*[contains(@text,'CLIQUE AQUI')]

    Click Element               ${element}
    Wait Until Page Contains    Isso é um clique simples

Deve realizar um clique longo
    [tags]              long_click
    Go To Long Click

    ${element} =    Set Variable    xpath=//*[contains(@text,'CLIQUE AQUI')]

    Long Press    ${element}    1000

    Wait Until Page Contains    CLIQUE LONGO OK