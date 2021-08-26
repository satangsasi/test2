*** Settings ***
Resource    ../Resources/Keywords/createtestkeywords.robot
Resource    ../Resources/Repositories/Web/createtestRepositories.robot
Resource    ../Resources/Variables/createtestVariables.robot
Resource    ../Resources/Localized/${lang}/createtestLocalized.robot
Suite Teardown      Close Browser
*** Test Case ***
Test Search Thai/Eng
    Open web    gc
    Search Text     ${text_search}              
    Verify Text     ${text_search}    