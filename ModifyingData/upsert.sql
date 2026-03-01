CREATE TABLE inventory (
    id PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO inventory (id, name, price, quantity) 
VALUES 
(1, 'Laptop', 999.99, 10),
(2, 'Smartphone', 499.99, 20),
(3, 'Headphones', 199.99, 15);

-- upsert when conflict occurs on id, do nothing
INSERT INTO inventory (id, name, price, quantity)
VALUES 
(1, 'Item A', 30.00, 100)
ON CONFLICT (id) DO NOTHING;

SELECT * FROM inventory;

-- upsert when conflict occurs on id, update the existing record
INSERT INTO inventory (id, name, price, quantity)
VALUES
(2, 'Smartphone', 450.00, 25)
ON CONFLICT (id) DO UPDATE SET
    price = EXCLUDED.price,
    quantity = EXCLUDED.quantity;

SELECT * FROM inventory;