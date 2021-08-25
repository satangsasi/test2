*** Settings ***
Library     SeleniumLibrary
Test Teardown       Close Browser
*** Variable ***
${URL_web}      https://www.google.com/
${Text_box}     name=q
${Search_botton}   name=btnK 
${link}         (//h3[@class="LC20lb DKV0Md"])
*** Keywords ***
Open web
    [Arguments]     ${Browser}
    Open Browser     ${URL_web}     ${Browser}
    Maximize Browser Window          
    Wait Until Page Contains    google
Search Text
    [Arguments]    ${Text_Searh}
    Input text     ${Text_box}        ${Text_Searh} 
    Wait Until Page Contains          ${Text_Searh}
    Click Button   ${Search_botton}
    Wait Until Page Contains          ${Text_Searh}
Verify Text
    [Arguments]    ${Text_Searh} 
    Page Should Contain    ${Text_Searh}
Click link
    [Arguments]         ${index}    
    click Element       ${link}\[${index}]
    Wait Until Page Does Not Contain Element        ${link}
    Page Should Not Contain Element       ${link}     


*** Test Case ***
Click_link3_Test
    Open web  gc
    Search_Text     robot framework
    Verify Text     robot framework
    Click link      3       

