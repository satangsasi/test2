*** Settings ***
Resource        ../Resourcegetotp/Keyword/createdkeywordopenappmood.robot
Resource        ../Resourcegetotp/Keyword/createdkeywordopenwebdtac.robot

*** Test Case ***
get OTP number
    Open web dtac   gc
    Input Phonenumber
    Click login
    open app mood
    get otp
    Input OTP number  
    Verify Page login