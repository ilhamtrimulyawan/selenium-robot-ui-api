*** Settings ***
Library           SeleniumLibrary
Library    OperatingSystem
Resource          ../resources/custom_keywords.robot
Suite Setup       Launch Drag Page
Suite Teardown    Close Browser

*** Test Cases ***
Move A to B and Check
    [Tags]    ui
    Wait Until Page Contains Element    id=column-a    5s
    Perform Custom Drag And Drop    id=column-a    id=column-b
    Sleep    2s
    Element Text Should Be    id=column-b    A