CREATE DATABASE tokopedia_order_history;

USE tokopedia_order_history;


CREATE TABLE orders
(
    id                    VARCHAR(100) PRIMARY KEY,
    seller_id             VARCHAR(100) NOT NULL,
    seller_name           VARCHAR(100) NOT NULL,
    buyer_id              VARCHAR(100) NOT NULL,
    buyer_name            VARCHAR(100) NOT NULL,
    shipping_name         VARCHAR(100) NOT NULL,
    shipping_address      VARCHAR(500) NOT NULL,
    shipping_phone        VARCHAR(25)  NOT NULL,
    logistic_id           VARCHAR(100) NOT NULL,
    logistic_name         VARCHAR(100) NOT NULL,
    payment_method_id     VARCHAR(100) NOT NULL,
    payment_method_name   VARCHAR(100) NOT NULL,
    total_quantity        INT          NOT NULL,
    total_weight          INT          NOT NULL,
    total_product_amount  BIGINT       NOT NULL,
    total_shipping_cost   BIGINT       NOT NULL,
    total_shopping_amount BIGINT       NOT NULL,
    service_charge        BIGINT       NOT NULL,
    total_amount          BIGINT       NOT NULL
) ENGINE InnoDB;


SELECT *
FROM orders;

CREATE TABLE order_details
(
    id             VARCHAR(100) PRIMARY KEY,
    order_id       VARCHAR(100) NOT NULL,
    product_id     VARCHAR(100) NOT NULL,
    product_name   VARCHAR(250) NOT NULL,
    product_weight INT          NOT NULL,
    product_price  BIGINT       NOT NULL,
    quantity       INT          NOT NULL,
    total_amount   BIGINT       NOT NULL,
    FOREIGN KEY fk_orders_to_order_details (order_id) REFERENCES orders (id)
) ENGINE InnoDB;


SELECT *
FROM order_details;
