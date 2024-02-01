CREATE OR REPLACE FUNCTION get_branches_assets_greater_than(con NUMERIC)
	RETURNS TABLE (
		branch_name VARCHAR,
		branch_city VARCHAR,
		assets NUMERIC
	)
	LANGUAGE plpgsql
	AS
	$$
BEGIN
    RETURN QUERY
    SELECT B.branch_name, B.branch_city, B.assets
    FROM branch B
    WHERE B.assets >= con
    ORDER BY B.branch_name ASC;
END;
$$;

SELECT * FROM get_branches_assets_greater_than(100);