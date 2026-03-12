CREATE TABLE invoice(
  id serial PRIMARY KEY,
  product_id INT NOT NULL,
  qty NUMERIC NOT NULL CHECK(qty > 0),
  net_price NUMERIC CHECK(net_price > 0) 
);

INSERT INTO invoice(product_id, qty, net_price)
VALUES
    ('101', '2', '500'),
    ('102', '3', '1500'),
    ('103', '1', '2000'),
    -- ('104', NULL, '3000'), -- This will fail due to NOT NULL constraint
    ('105', '5', NULL);

SELECT * FROM invoice;