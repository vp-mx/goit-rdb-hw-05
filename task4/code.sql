WITH temp AS (
    SELECT id, quantity
    FROM order_details
    WHERE quantity > 10
)
SELECT id, AVG(quantity) AS avg_quantity
FROM temp
GROUP BY id;