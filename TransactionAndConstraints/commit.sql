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

 INSERT INTO BankStatements (
     customer_id,
    full_name,
        balance
)
    VALUES
             ( 4, 'Priya chetri', 500 );
        
COMMIT;