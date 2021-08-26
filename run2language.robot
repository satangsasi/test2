*** Settings ***
Library         SeleniumLibrary
Resource        ../Resource/${lang}_massage.robot  
#เป็นการดึงเอาข้อมูลมาจากไฟล์อื่น 
#>>วิธีการเขียนคือ ../ชื่อโฟล์เดอร์/ตัวแปรมารับค่าว่าเราจะเลือกภาษาอะไร
#>>ตามด้วยชื่อไฟล์ข้อมูลที่เหลือที่เราสร้างไว้ 
#เช่น th_massage.robot=${lang}_massage.robot
Suite Teardown        Close Browser
*** Variable ***
${URL_web}      https://www.google.com/
${Text_box}     name=q
${Search_botton}   name=btnK 
*** Keywords ***
Open web
    [Arguments]     ${Browser}
    Open Browser     ${URL_web}     ${Browser}
    Maximize Browser Window          
    Wait Until Page Contains    ${Browser}
Search Text
    [Arguments]    ${Text_Searh}
    Input text     ${Text_box}        ${Text_Searh} 
    Wait Until Page Contains          ${Text_Searh}
    Click Button   ${Search_botton}
    Wait Until Page Contains          ${Text_Searh}
Verify Text
    [Arguments]    ${Text_Searh} 
    Page Should Contain    ${Text_Searh}
*** Test Case ***
Test Search Thai/Eng
    Open web    gc
    Search Text     ${Text_Searh}              
    Verify Text     ${Text_Searh} 
#คำสั่งrun robot --variable lang:ภาษา>>th or en ตามด้วยชื่อไฟล์ที่จะรัน.robot