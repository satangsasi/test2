*** Settings ***
Library         SeleniumLibrary
Resource        ../Variables/createtestVariables.robot
Resource        ../Repositories/Web/createtestRepositories.robot
*** Keywords ***
open web        
    [Arguments]     ${wbs}
    Open Browser     ${llb_google}     ${wbs}
    Maximize Browser Window          
    Wait Until Page Contains    ${wbs}
search text
    [Arguments]    ${Text_input}
    Input text     ${txt_searchgoogle}        ${Text_input} 
    Wait Until Page Contains          ${Text_input}
    Click Button   ${btn_search}
    Wait Until Page Contains          ${Text_input}
verify text
    [Arguments]    ${Text_input} 
    Page Should Contain     ${Text_input}  
click link
    [Arguments]         ${index}    
    click Element       ${lbl_link}\[${index}]
    Wait Until Page Does Not Contain    ${lbl_link}\[${index}]
    Page Should Not Contain Element     ${lbl_link}\[${index}]     