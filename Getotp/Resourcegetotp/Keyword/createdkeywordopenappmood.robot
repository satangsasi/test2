*** Settings ***
Library    String 
Library    AppiumLibrary
Library    SeleniumLibrary
Resource        ../Repositories/andriod/createdrepositoriesappmood.robot
*** Keywords ***
open app mood
    Open Application    http://localhost:4723/wd/hub
    ...         platformName=Android
    ...         deviceName=21f36218c20b7ece
    ...         platformVersion=10
    ...         appActivity=com.calea.echo.LaunchActivity
    ...         appPackage=com.calea.echo
    ...         automationName=UiAutomator2
    ...         noReset=true
get otp
    AppiumLibrary.Wait Until Page Contains Element        ${lbl_accoutdtacmassage}      30s           
    AppiumLibrary.Capture Page Screenshot       OTPIMAGE
    ${text_OTP}     AppiumLibrary.Get Text    ${lbl_massageotp}
    ${TextNumber_OTP} =    Get Regexp Matches     ${text_OTP}    ([0-9]{4})
    Set Test Variable      ${TextNumber_OTP}      ${TextNumber_OTP}  
    
