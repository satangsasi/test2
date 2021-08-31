*** Settings ***
Resource        ../Resourcegetotp/Keyword/createdkeywordopenappmood.robot
Resource        ../Resourcegetotp/Keyword/createdkeywordopenwebdtac.robot

*** Test Case ***
get_OTP_number
    Open web dtac   gc
    Input Phonenumber
    Click login
    open app mood
    get_otp
    Input OTP number  