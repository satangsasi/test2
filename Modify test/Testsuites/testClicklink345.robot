*** Settings ***
Resource    ../Resources/Keywords/createtestkeywords.robot
Resource    ../Resources/Repositories/Web/createtestRepositories.robot
Resource    ../Resources/Variables/createtestVariables.robot
Suite Teardown      Close Browser
*** Test Case ***
search_text_andclicklink345_google
    open web  gc
    search text     robot framework
    verify text     robot framework
    click link      3
    Go back
    click link      4
    Go back
    click link      5