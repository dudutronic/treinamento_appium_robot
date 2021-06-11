***Settings***

Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

#start_x - x-percent at which to start
#start_y - y-percent at which to start
#end_x - x-percent distance from start_x at which to stop
#end_y - y-percent distance from start_y at which to stop
#duration - (optional) time to take the swipe, in ms.

#Y 88.8 = Vertical
#x 18.22 = Horizontal
#Y 47.22 = Vertical
#X 18.22 = Horizontal

***Variables***
${BTN_REMOVE}=    id=io.qaninja.android.twp:id/btnRemove


***Test Cases***
Deve remover o Capitão America
    Go To Avangers List

    Swipe By Percent    88.8    18.22    47.22    18.22

    Wait Until Element Is Visible    ${BTN_REMOVE}
    Click Element                    ${BTN_REMOVE}
