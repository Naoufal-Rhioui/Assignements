-- Stored Function to insert data into the parts_inventory table

CREATE OR REPLACE FUNCTION add_parts(_parts_inventory_id INTEGER, _parts_id INTEGER, _parts_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO parts_inventory(parts_inventory_id, parts_id,parts_name)
	VALUES(_parts_inventory_id, _parts_id, _parts_name);
END;
$MAIN$
LANGUAGE plpgsql;


-- Call add_parts
SELECT add_parts(102030,908070, 'Camshaft');
SELECT add_parts(302010,708090, 'Camshaft');


-- Verify that new parts have been added
SELECT *
FROM parts_inventory
