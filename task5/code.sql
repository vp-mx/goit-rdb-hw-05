DROP FUNCTION IF EXISTS divide;

DELIMITER //

CREATE FUNCTION divide(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE result INT;
    IF b = 0 THEN
        RETURN NULL;
    END IF;
    SET result = a / b;
    RETURN result;
END //

DELIMITER ;

SELECT order_id, quantity, divide(quantity, 3) AS divided_quantity
FROM order_details;