CREATE TABLE BankStatements (
    customer_id serial PRIMARY KEY,
    full_name VARCHAR NOT NULL,
    balance INT
);


INSERT INTO BankStatements (full_name, balance)
VALUES 
    ('Sekhar rao', 1000),
    ('Abishek Yadav', 500),
    ('Srinivas Goud', 1000);

SELECT * FROM BankStatements ORDER BY customer_id;


BEGIN;
    DELETE FROM BankStatements WHERE customer_id = 2;

    SELECT * FROM BankStatements ORDER BY customer_id;

ROLLBACK;

    SELECT * FROM BankStatements ORDER BY customer_id;

COMMIT;