CREATE OR REPLACE FUNCTION get_rich_accounts(threshold INT)
RETURNS TABLE (
    acc_name VARCHAR,
    acc_balance INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT name, balance 
    FROM accounts 
    WHERE balance > threshold;
END;
$$ LANGUAGE plpgsql;