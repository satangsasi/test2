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
    Maximize Browser Window          
    sleep  1

Search_Text
    [Arguments]    ${Text_Searh}
    Input text     ${Text_box}        ${Text_Searh} 
    sleep  1s
    Click Button   ${Search_botton}
    sleep   2s
    
Verify Text
     [Arguments]    ${Text_Searh} 
     Wait Until Page Contains    ${Text_Searh}    

*** Test Case ***
Search_link_Test
    Open web  gc
    Search_Text     robot freamwork
    Verify Text     robot freamwork
    sleep   1
    Go to         ${URL_web}      

    