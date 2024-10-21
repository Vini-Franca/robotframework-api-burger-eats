*** Settings ***
Documentation             Database helpers connection
Library                   RobotMongoDBLibrary.Delete
Library                   RobotMongoDBLibrary.Find

*** Variables ***
&{MONGODB_URI}            connection=mongodb+srv://bugereats:z3PBtTxfIZQniWye@cluster0.ljru3.mongodb.net/PartnerDB?retryWrites=true&w=majority&appName=Cluster0    database=PartnerDB   collection=partner

*** Keywords ***
Remove Partner By Name
    [Arguments]           ${partner_name}
    ${filter}             Create Dictionary
    ...                   name=${partner_name}
    Delete One            ${MONGODB_URI}    ${filter}

Find Partner By Name
    [Arguments]           ${partner_name}
    ${filter}             Create Dictionary
    ...                   name=${partner_name}
    ${results}            Find    ${MONGODB_URI}    ${filter}
    [Return]              ${results}[0]