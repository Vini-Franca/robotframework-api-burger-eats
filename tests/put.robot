*** Settings ***
Documentation             PUT /partners
Resource                  ../resources/base.robot

*** Test Cases ***
CT-01 - Should enable a partner
    ${partner}                  Factory Enable Partner
    ${partner_id}               Create a new partner    ${partner}
    ${response}                 Enable Partner          ${partner_id}
    Status Should Be            200

CT-02 - Should disable a partner
    ${partner}                  Factory Disable Partner
    ${partner_id}               Create a new partner    ${partner}
    Enable Partner              ${partner_id}
    ${response}                 Disable Partner         ${partner_id}
    Status Should Be            200

CT-03 - Should return 404 on enable a partner
    ${partner}                  Factory 404 Partner
    ${partner_id}               Create a new partner    ${partner}
    Remove Partner By Name      ${partner}[name]
    ${response}                 Enable Partner         ${partner_id}
    Status Should Be            404

CT-04 - Should return 404 on enable a partner
    ${partner}                  Factory 404 Partner
    ${partner_id}               Create a new partner    ${partner}
    Remove Partner By Name      ${partner}[name]
    ${response}                 Disable Partner       ${partner_id}
    Status Should Be            404

