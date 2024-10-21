*** Settings ***
Documentation             DELETE /partners
Resource                  ../resources/base.robot

*** Test Cases ***
CT-01 - Should remove a partner
    ${partner}                Factory Remove Partner  
    ${partner_id}             Create a new partner      ${partner}
    Delete Partner            ${partner_id}
    Status Should Be          204

CT-02 - Should return 404 on remove a partner
    ${partner}                  Factory 404 Partner
    ${partner_id}               Create a new partner    ${partner}
    Remove Partner By Name      ${partner}[name]
    Delete Partner              ${partner_id}
    Status Should Be            404

