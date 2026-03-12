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



BEGIN;

      UPDATE BankStatements
      SET balance = balance - 500
      WHERE 
      customer_id = 1;
      
      -- displaying data before
      -- committing the transaction
      SELECT customer_id, full_name, balance
      FROM BankStatements;
      
      UPDATE BankStatements
      SET balance = balance + 500
      WHERE 
      customer_id = 2;
       
ROLLBACK;

-- displaying data after
-- committing the transaction
SELECT customer_id, full_name, balance
FROM BankStatements;