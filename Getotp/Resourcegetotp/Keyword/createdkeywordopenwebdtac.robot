*** Settings ***
Library         SeleniumLibrary
Resource        ../Repositories/web/createdrepositorieswebdtac.robot
Resource        createdkeywordopenappmood.robot
*** Keywords ***
Open web dtac
    [Arguments]     ${browser}    
    Open Browser        https://www.dtac.co.th/mydtac/login.html        ${browser}
    Maximize Browser Window          
    SeleniumLibrary.Wait Until Page Contains Element        ${txt_phonenumber}
Input Phonenumber
    SeleniumLibrary.Input Text      ${txt_phonenumber}      0626478886

Click login
    SeleniumLibrary.Wait Until Page Contains Element        ${btn_next}
    SeleniumLibrary.Click Element   ${btn_next}
Input OTP number 
    SeleniumLibrary.Input Text      ${txt_otpweb}       ${TextNumber_OTP}                        