--{{ config(materialized = 'view') }}

SELECT
    customerid,
    lower(customername) as customer_name,
    email as email_address,
    address as billing_address
FROM raw.customer