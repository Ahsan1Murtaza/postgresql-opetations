create table accounts(
    id int,
    name varchar(255),
    balance int
);

insert into accounts values (1, 'Alice', 1000);
insert into accounts values (2, 'Bob', 1500);


-- In Mode
create or replace function get_balance (account_id int)
RETURNS DECIMAL AS $$
BEGIN
    -- 'account_id' is IN by default. We can't change it.
    RETURN balance FROM accounts WHERE id = account_id;
END;
$$ LANGUAGE plpgsql;

SELECT get_balance(1);


-- OUT Mode

CREATE OR REPLACE FUNCTION get_account_info (
    p_account_id INT, 
    OUT p_name VARCHAR, 
    OUT p_balance INT
) AS $$
BEGIN
    -- We select from the table columns and INTO our specific parameters
    SELECT name, balance 
    INTO p_name, p_balance 
    FROM accounts 
    WHERE id = p_account_id;
END;
$$ LANGUAGE plpgsql;
SELECT * from get_account_info(1);


-- INOUT Mode

CREATE OR REPLACE FUNCTION apply_bonus(INOUT balance DECIMAL) 
AS $$
BEGIN
    -- We take the 'balance' passed in, add 50, and it gets returned automatically
    balance := balance + 50.00;
END;
$$ LANGUAGE plpgsql;

-- Calling it:
-- You pass 1000.00 in, you get 1050.00 back.
SELECT apply_bonus(1000.00);
