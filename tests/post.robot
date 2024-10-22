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
    ${partner}                Factory Dup Name
    Remove Partner By Name    ${partner}[name]
    POST Partner              ${partner}
    ${response}               POST Partner    ${partner}
    Status Should Be          409
    Should Be Equal           ${response.json()}[message]    ${invalid_message.duplicate_name}

CT-03 - Should return invalid email
    ${partner}                Factory Invalid Email
    Remove Partner By Name    ${partner}[name]
    POST Partner              ${partner}
    ${response}               POST Partner    ${partner}
    Status Should Be          400
    Should Be Equal           ${response.json()}[message]    ${invalid_message.email}

CT-04 - Should return invalid Whatsapp
    ${partner}                Factory Invalid Whatsapp
    Remove Partner By Name    ${partner}[name]
    POST Partner              ${partner}
    ${response}               POST Partner    ${partner}
    Status Should Be          400
    Should Be Equal           ${response.json()}[message]    ${invalid_message.whatsapp}

CT-05 - Should return duplicate email
    ${partner}                Factory Dup Email
    POST Partner              ${partner}
    ${response}               POST Partner    ${partner}
    Status Should Be          409
    Should Be Equal           ${response.json()}[message]    ${invalid_message.duplicate_email}

CT-06 - Should return invalid Business
    ${partner}                Factory Invalid Business
    Remove Partner By Name    ${partner}[name]
    POST Partner              ${partner}
    ${response}               POST Partner    ${partner}
    Status Should Be          400
    Should Be Equal           ${response.json()}[message]    ${invalid_message.business}