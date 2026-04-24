CREATE OR REPLACE FUNCTION deduplicate_basket()
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
    deleted_count INTEGER;
BEGIN
    DELETE FROM basket
    WHERE id IN (
        SELECT id FROM (
            SELECT id, 
                   ROW_NUMBER() OVER (PARTITION BY product ORDER BY id) as rn
            FROM basket
            WHERE product = 'Apple'
        ) sub
        WHERE rn > 1
    );

    GET DIAGNOSTICS deleted_count = ROW_COUNT;
    RETURN deleted_count;
END;
$$;


SELECT deduplicate_basket();