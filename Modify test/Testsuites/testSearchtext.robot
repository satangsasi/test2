*** Settings ***
Resource    ../Resources/Keywords/createtestkeywords.robot
Resource    ../Resources/Repositories/Web/createtestRepositories.robot
Resource    ../Resources/Variables/createtestVariables.robot
Suite Teardown      Close Browser
*** Test Case ***
search_text_google
    open web  gc
    search text     robot framemwork
    verify text     robot framework