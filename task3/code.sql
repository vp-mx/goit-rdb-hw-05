SELECT sub.id, AVG(sub.quantity) AS avg_quantity
FROM (
    SELECT id, quantity
    FROM order_details
    WHERE quantity > 10
) AS sub
GROUP BY sub.id;