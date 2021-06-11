***Settings***
Library    AppiumLibrary
#{ Capabilitys
#    "automationName": "UiAutomator2",
#    "platformName": "Android",
#    "deviceName": "Emulator",
#    "app": "C:\\workspace\\treinamento_appium_robot\\app\\vitta.apk",
#    "udid": "emulator-5554"
#}

***Test Cases***
Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/vitta.apk
    ...                 udid=emulator-5554

    Wait Until Page Contains    Saúde é liberdade    20