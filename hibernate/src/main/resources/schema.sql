CREATE SCHEMA IF NOT EXISTS netology;
CREATE TABLE IF NOT EXISTS netology.customers (
                                                  id SERIAL PRIMARY KEY,
                                                  name VARCHAR(50),
                                                  email VARCHAR(100)
);

create table if not exists netology.orders
(
    id           serial primary key,
    date         date,
    customer_id  int,
    product_name varchar(255)            not null,
    amount       int check (amount > 0 ) not null,
    foreign key (customer_id) references netology.customers (id)
    );