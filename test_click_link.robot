*** Settings ***
Library     SeleniumLibrary
Test Teardown       Close Browser
*** Variable ***
${URL_web}      https://www.google.com/
${Text_box}     name=q
${Search_botton}   name=btnK
#${link_robot}      //*[@id="rso"]/div[4]/div/div/div[1]/a/h3   

*** Keywords ***
Open web
    [Arguments]     ${Browser}
    Open Browser     ${URL_web}     ${Browser}
    Maximize Browser Window          
    sleep  1
Search_Text
    [Arguments]    ${Text_Searh}
    Input text     ${Text_box}        ${Text_Searh} 
    Wait Until Page Contains          ${Text_Searh}
    Click Button   ${Search_botton}
    Wait Until Page Contains          ${Text_Searh}
Verify Text
    [Arguments]    ${Text_Searh} 
    Page Should Contain    ${Text_Searh}
Click link
    [Arguments]    ${link_robot}    
    Click Element       ${link_robot}
    Wait Until Page Does Not Contain Element    ${link_robot}
    Page Should Not Contain Element       ${link_robot}     
     

*** Test Case ***
Click_link3_Test
    Open web  gc
    Search_Text     robot framework
    Verify Text     robot framework
    Click link     //*[@id="rso"]/div[4]/div/div/div[1]/a/h3       
                 

    