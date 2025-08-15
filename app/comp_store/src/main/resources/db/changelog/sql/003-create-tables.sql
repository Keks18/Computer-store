--liquibase formatted sql

--changeset max:create-price_history
CREATE TABLE price_history
(
    id   SERIAL PRIMARY KEY,
    product_id integer references product (id),
    price integer not null
);