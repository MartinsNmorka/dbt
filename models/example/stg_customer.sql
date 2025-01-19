With stg_customers AS(
    SELECT
        customerID,
        UPPER(customerName) as fullname,
        email as email_address,
        address
    FROM raw.customer
)
Select * from stg_customers
