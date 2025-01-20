-- Use the `ref` function to select from other models

SELECT
    o.orderid,
    c.customerid,
    c.fullname,
    p.productid,
    p.productname,
    o.quantity,
    {{get_date_parts('Orderdate') }} as date_extract
FROM 
    raw.orders o
JOIN
    {{ ref('stg_customer') }} c ON o.customerid = c.customerid
JOIN
    raw.products p ON o.productid = p.productid