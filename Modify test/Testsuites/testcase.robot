*** Settings ***
Resource    ../Resources/Keywords/createtestkeywords.robot
Resource    ../Resources/Localized/${lang}/createtestLocalized.robot
Suite Teardown      Close Browser
*** Test Case ***
search_text_google
    open web  gc
    search text     robot framemwork
    verify text     robot framework
search_text_andclicklink3_google
    open web  ff
    search text     robot framework
    verify text     robot framework
    click link      3
search_text_andclicklink345_google
    open web  gc
    search text     robot framework
    verify text     robot framework
    click link      3
    Go back
    click link      4
    Go back
    click link      5
Test_Search_Thai/Eng
    Open web    gc
    Search Text     ${text_search}             
    Verify Text     ${text_search}   
