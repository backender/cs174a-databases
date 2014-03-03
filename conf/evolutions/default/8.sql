# Accessories Schema

# --- !Ups

CREATE SEQUENCE accessories_id_seq;
CREATE TABLE accessories (
    id integer NOT NULL DEFAULT nextval('accessories_id_seq'),
    productID integer NOT NULL,
    accessoryID integer NOT NULL,
    FOREIGN KEY (productID) REFERENCES catalogProducts(id),
    FOREIGN KEY (accessoryID) REFERENCES catalogProducts(id),
    PRIMARY KEY (id)
)

# --- !Downs

DROP TABLE accessories;
DROP SEQUENCE accessories_id_seq;
