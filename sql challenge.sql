create table product (
    id INT,
    product VARCHAR(50),
    stock BIGINT,
    available_for_selling BOOL
);

create table "user" (
id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50)
address VARCHAR(50)
);

create table sales (
    quantity BIGINT,
	product_id BIGINT,
	client_id BIGINT
);

BEGIN;

-- Consulta para verificar el disponible
SELECT * FROM product WHERE id = 3 AND stock >= 10;

-- Consulta para verificar si se puede vender el producto
SELECT * FROM product WHERE id = 3 AND available_for_selling = true;

-- Actualizando columna XYZ
UPDATE product SET stock = (stock - 10) WHERE id = 3 and available_for_selling = true;

-- registrando venta
INSERT INTO sales (quantity, product_id, client_id) VALUES (10, 3, 100);

COMMIT;
