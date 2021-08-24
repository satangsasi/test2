*** Settings ***
Library     SeleniumLibrary
Test Teardown       Close Browser
*** Variable ***
${URL_web}      https://www.google.com/
${Text_box}     name=q
${Search_botton}   name=btnK
${link_robot}      //*[@id="rso"]/div[4]/div/div/div[1]/a/h3   

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
    Click Element       ${link_robot}
    Page Should Contain Element        id=c92c          

    