*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${CHROMEDRIVER_PATH}    ${CURDIR}/../drivers/chromedriver.exe

*** Keywords ***
Launch Drag Page
    Open Browser    http://the-internet.herokuapp.com/drag_and_drop    Chrome    executable_path=${CHROMEDRIVER_PATH}
    Maximize Browser Window
    Sleep    2s

Perform Custom Drag And Drop
    [Arguments]    ${fromSelector}    ${toSelector}
    ${js}=    Get File    ${CURDIR}/drag_and_drop.js
    Execute Javascript    ${js}    ${fromSelector}    ${toSelector}
