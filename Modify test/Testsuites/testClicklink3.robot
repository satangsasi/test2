*** Settings ***
Resource    ../Resources/Keywords/createtestkeywords.robot
Resource    ../Resources/Repositories/Web/createtestRepositories.robot
Resource    ../Resources/Variables/createtestVariables.robot
Suite Teardown      Close Browser
*** Test Case ***
search_text_andclicklink3_google
    open web  gc
    search text     robot framework
    verify text     robot framework
    click link      3