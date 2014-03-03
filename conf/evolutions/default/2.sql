# Manufacturers Schema

# --- !Ups

CREATE SEQUENCE manufacturer_id_seq;
CREATE TABLE manufacturers (
    id integer NOT NULL DEFAULT nextval('manufacturer_id_seq'),
    companyName varchar(10) NOT NULL,
    PRIMARY KEY (id)
)

# --- !Downs

DROP TABLE manufacturers;
DROP SEQUENCE manufacturer_id_seq;
