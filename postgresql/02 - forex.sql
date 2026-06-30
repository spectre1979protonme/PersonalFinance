CREATE SCHEMA forex
AUTHORIZATION postgres;

CREATE TABLE forex.currency
(
    id smallint,
    name character varying(50),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS forex.currency
    OWNER to postgres;

INSERT INTO forex.currency (id,name) VALUES(1,'CHF');
INSERT INTO forex.currency (id,name) VALUES(2,'EUR');
INSERT INTO forex.currency (id,name) VALUES(3,'USD');

