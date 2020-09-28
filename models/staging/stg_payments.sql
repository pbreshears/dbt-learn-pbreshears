select 
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    status,
    to_decimal(amount/100, 2, 0) as amount, -- change cents to dollars
    created as created_at
from {{ source('stripe','payment') }}
