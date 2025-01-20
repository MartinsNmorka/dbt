-- Test to check if there are no orders from today

SELECT
    count(*) as num_orders_today
FROM raw.orders
WHERE DATE(Orderdate) = CURRENT_DATE()
HAVING Count(*) > 0