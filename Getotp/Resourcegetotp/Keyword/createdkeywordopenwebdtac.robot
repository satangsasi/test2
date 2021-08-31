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
    SeleniumLibrary.Input Text      ${txt_otpweb1}       ${TextNumber_OTP}[0]
    SeleniumLibrary.Input Text      ${txt_otpweb2}       ${TextNumber_OTP}[1]
    SeleniumLibrary.Input Text      ${txt_otpweb3}       ${TextNumber_OTP}[2]
    SeleniumLibrary.Input Text      ${txt_otpweb4}       ${TextNumber_OTP}[3]                                                                                                