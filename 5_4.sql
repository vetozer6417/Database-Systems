CREATE TABLE address_audit_log(
	customer_name VARCHAR(45) NOT NULL, 
	old_address VARCHAR(45) NOT NULL,
	address_audit_date TIMESTAMP NOT NULL
);

CREATE OR REPLACE FUNCTION log_address_history()
	RETURNS TRIGGER
	LANGUAGE plpgsql
AS
$$
	BEGIN
		INSERT INTO address_audit_log (customer_name,old_address,address_audit_date)
		VALUES (OLD.customer_name,OLD.customer_street,now());
		RETURN NEW;
	END;
$$;

CREATE TRIGGER updating_new_address
	BEFORE UPDATE
	OF customer_street ON customer
	FOR EACH ROW
	EXECUTE PROCEDURE log_address_history();

--Update table
UPDATE customer
SET customer_street = 'Que_street'
WHERE customer_name = 'Alan';

SELECT * FROM customer;

SELECT * FROM address_audit_log;


	