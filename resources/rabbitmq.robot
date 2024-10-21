*** Settings ***
Documentation                RabbitMQ Helpers API
Library    RequestsLibrary

*** Variables ***
${RABBIT_URL}                https://shrimp.rmq.cloudamqp.com/api/queues/tlonrygv/email
&{RABBIT_HEADERS}            Content-Type=application/json    Authorization=Basic dGxvbnJ5Z3Y6aXJjY0dteUktNXc1OEczaVN4SlAtS3I5bzlmZ1FQUmc=

*** Keywords ***
Purge Messages
    ${payload}              Create Dictionary
    ...                     vhost=tlonrygv
    ...                     name=email
    ...                     mode=purge
    ${response}             DELETE    ${RABBIT_URL}/contents    json=${payload}    headers=${RABBIT_HEADERS}
    [Return]                ${response}

Get Message
    ${payload}              Create Dictionary
    ...                     vhost=tlonrygv
    ...                     name=email
    ...                     truncate=50000
    ...                     ackmode=ack_requeue_true
    ...                     encoding=auto
    ...                     count=1              
    ${response}             POST    ${RABBIT_URL}/get    json=${payload}    headers=${RABBIT_HEADERS}
    [Return]                ${response}