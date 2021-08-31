*** Settings ***
Library    String 
Library    AppiumLibrary  

*** Test Cases ***
# Example regex for product amount
#     ${product amount} =    Get Regexp Matches     ${OTP}    ([0-9]{4})         1   
#     ${product amount} =    Replace String    ${product amount}[0]    ,    ${EMPTY}

#     #${product amount} =    Convert To Number    ${product amount}
#     #Should Be Equal As Numbers    1000.5    ${product amount}
*** Keywords ***
open_app
    Open Application    http://localhost:4723/wd/hub
    ...         platformName=Android
    ...         deviceName=21f36218c20b7ece
    ...         platformVersion=10
    ...         appActivity=com.calea.echo.LaunchActivity
    ...         appPackage=com.calea.echo
    ...         automationName=UiAutomator2
    ...         noReset=true
get_otp
    Tap         ${lbl_accoutdtacmassage}     
    Wait Until Page Contains Element        ${txt_massageotp} 
    ${textmassage_otp}     Get Text        ${txt_massageotp}
    [Return]        ${textmassage_otp}
    ${number_otp} =    Get Regexp Matches     ${textmassage_otp}    ([0-9]{4})
    [Return]        ${number_otp}
    #${product amount} =    Get Regexp Matches     ${OTP}    ([0-9]{4})         1   
    #${product amount} =    Replace String    ${product amount}[0]    ,    ${EMPTY}
    #[Return]    ${product amount}
    #${text_otp}     Get Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[5]/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout[3]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[7]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout
# *** Test Case ***
# open_app_mood_and_get_otp
#     open_app
#     get_otp
#     Input Text      
    # open_app
    # Tap     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[6]/android.widget.FrameLayout/androidx.viewpager.widget.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.FrameLayout[3]/android.widget.LinearLayout
    # Wait Until Page Contains Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[5]/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout[3]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[7]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView 
    # ${text_otp}     Get Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[5]/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout[3]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[7]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView
    # [Return]        ${text_otp}
    # ${product amount} =    Get Regexp Matches     ${text_otp}    ([0-9]{4})           

           