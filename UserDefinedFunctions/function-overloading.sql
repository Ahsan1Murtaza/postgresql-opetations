CREATE OR REPLACE FUNCTION apply_discount(price INT, reduction INT)
RETURNS INT AS $$
BEGIN
    RETURN price - reduction;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION apply_discount(price INT, percentage NUMERIC)
RETURNS INT AS $$
BEGIN
    RETURN price - (price * percentage);
END;
$$ LANGUAGE plpgsql;


select apply_discount(100, 20); -- Calls the first function, returns 80
select apply_discount(100, 0.2); -- Calls the second function, returns 80 as well (100 - 20% of 100)