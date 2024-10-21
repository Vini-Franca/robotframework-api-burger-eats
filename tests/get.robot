*** Settings ***
Documentation             GET /partners
Resource                  ../resources/base.robot
Suite Setup               Create partner list

*** Test Cases ***
CT-01 - Should return a partner list
    ${response}         GET Partners
    Status Should Be    200

    ${size}             Get Length    ${response.json()}

    Should Be True      ${size}    > 0

CT-02 - Should search partner by name
    ${response}         Search Partners    Mary Jane
    Status Should Be    200

    ${size}             Get Length    ${response.json()}
    Should Be True      ${size}    > 1

    Should Be Equal    ${response.json()}[0][name]    Mercearia da Mary Jane 

*** Keywords ***
Create partner list
    ${partners}         Factory Partner List

    FOR    ${p}    IN    @{partners}
        Remove Partner By Name    ${partners}
        POST Partner    ${p}
    END
