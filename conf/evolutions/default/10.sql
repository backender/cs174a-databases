# OrdersProducts Schema

# --- !Ups

CREATE SEQUENCE orders_products_id_seq;
CREATE TABLE ordersProducts (
    id integer NOT NULL DEFAULT nextval('orders_products_id_seq'),
    qty integer NOT NULL DEFAULT 1,
    priceBuy decimal NOT NULL,
    catProductID integer NOT NULL,
    ordersID integer NOT NULL,
    FOREIGN KEY (catProductID) REFERENCES catalogProducts(id),
    FOREIGN KEY (ordersID) REFERENCES orders(id),
    PRIMARY KEY (id)
)

# --- !Downs

DROP TABLE ordersProducts;
DROP SEQUENCE orders_products_id_seq;
