--liquibase formatted sql

--changeset max:create-stock
CREATE TABLE stock
(
    id   SERIAL PRIMARY KEY,
    product_id integer references product (id) UNIQUE,
    amount integer
);