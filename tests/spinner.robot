***Settings***

Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

***Variables***
${SPINNER}=         id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}=    class=android.widget.ListView

***Test Cases***
Deve selecioanar o perfil QA
    Go To SingUP Form

    Choice Job    QA

Deve selecioanar o perfil DevOps
    Go To SingUP Form

    Choice Job    DevOps

***Keywords***
Choice Job
    [Arguments]    ${targert}

    Click Element                    ${SPINNER}
    Wait Until Element Is Visible    ${LIST_OPTIONS}

    Click Text                ${targert}
    Element Text Should Be    id=android:id/text1    ${targert}