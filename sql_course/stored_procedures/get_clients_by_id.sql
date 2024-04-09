DELIMITER $$
CREATE PROCEDURE get_invoices_by_client
(
	client_id INT 
)
BEGIN
	IF client_id IS NULL THEN
		SELECT * FROM clients;
	ELSE
		SELECT * FROM invoices i
		WHERE i.client_id = client_id;
	END IF;
END

DELIMITER ;