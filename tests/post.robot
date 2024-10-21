*** Settings ***
Documentation             POST /partners
Resource                  ../resources/base.robot

*** Test Cases ***
CT-01 - Should create a new partner
    ${partner}                Factory New Partner  
    Remove Partner By Name    ${partner}[name]
    ${response}               POST Partner    ${partner}
    Status Should Be          201
    ${results}                Find Partner By Name              ${partner}[name]
    Should Be Equal           ${response.json()}[partner_id]    ${results}[_id]

CT-02 - Should return duplicate company name
    [Tags]                    CT-02
    ${partner}                Factory Dup Name
    Remove Partner By Name    ${partner}[name]
    POST Partner              ${partner}
    ${response}               POST Partner    ${partner}
    Status Should Be          409
    Should Be Equal           ${response.json()}[message]    Duplicate company name
