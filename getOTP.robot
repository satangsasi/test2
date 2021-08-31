*** Settings ***
# Library        AppiumLibrary
Library        SeleniumLibrary
Library        String
Resource       ../git2/test2/string.robot
*** Test Case ***
open_web_dtac
    #${product amount} =    Get Regexp Matches     ${OTP}    ([0-9]{4})         1   
    Open Browser    https://www.dtac.co.th/mydtac/login.html    gc
    Maximize Browser Window          
    Wait Until Page Contains Element            id=esv20_login_telnumb      
    Input Text        id=esv20_login_telnumb        ${product amount}
    # Click Element       id=esv20_login_mydtac
    
    # Wait Until Element Is Visible    //input[@id='esv20_mydtac_otp_s1']           30s
    # Input Text      //input[@id='esv20_mydtac_otp_s1']      ${product amount}   
    