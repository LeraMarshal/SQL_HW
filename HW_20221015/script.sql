CREATE TABLE goods
(
    id       INT PRIMARY KEY,
    title    VARCHAR(30),
    quantity INT CHECK (quantity > 0),
    price    NUMERIC,
    in_stock CHAR(1) CHECK (in_stock IN ('Y', 'N'))
);
