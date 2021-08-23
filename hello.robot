*** Settings ***
Library     SeleniumLibrary
Test Teardown       Close Browser
*** Variable ***
${URL_web}      https://www.google.com/
${Text_box}     name=q
${Search_botton}   name=btnK
*** Keywords ***
Open web
    [Arguments]     ${Browser}
    Open Browser     ${URL_web}     ${Browser}          
    sleep  1
Search_Text
    [Arguments]    ${Text_Searh}
    Input text     ${Text_box}        ${Text_Searh} 
    sleep  1
    Click Button   ${Search_botton}
Velify Text
    [Arguments]    ${Text_Searh} 
    Wait Until Page Contains    ${Text_Searh}    

*** Test Case ***
search_01_text_appuim
    Open web    gc   
    Search_Text  appium
    Velify Text  appium
search_02_text_dog
     Open web   gc   
     Search_Text  dog
     Velify Text  dog
search_03_text_cat
    Open web    gc
    Search_Text  cat
    Velify Text  cat
    