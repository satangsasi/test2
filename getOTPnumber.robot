*** Settings ***
Library        SeleniumLibrary
Library        String
Resource       string.robot
*** Variable ***
${txt_phonenumber}      id=esv20_login_telnumb
${btn_next}             id=esv20_login_mydtac
${btn_otp}              id=esv20_mydtac_otp_s1
*** Keywords ***
Open web
    Open Browser    https://www.dtac.co.th/mydtac/login.html    gc
    Maximize Browser Window          
    Wait Until Page Contains Element            ${txt_phonenumber}      
    Input Text        ${txt_phonenumber}        0626478886
Click login
    Click Element     ${btn_next}
    Wait Until Element Is Visible    ${btn_otp}           
*** Test Case ***
Get_otpnumber
    # Open web
    # Click login
    # Input Text      ${btn_otp}      8547
    open_app   