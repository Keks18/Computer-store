--liquibase formatted sql

--changeset max:001
CREATE TABLE brand
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

--changeset max:002
CREATE TABLE cpu
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

--changeset max:003
DROP TABLE IF EXISTS cpu;

--changeset max:004
CREATE TABLE category
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

--changeset max:005
CREATE TABLE product
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category_id integer references category (id),
    brand_id integer references brand (id)
);