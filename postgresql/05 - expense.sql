--EXPENSE.CATEGORY

CREATE TABLE expense.category (
    id          smallint,
    name character varying(50),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS expense.category
    OWNER to postgres;

INSERT INTO expense.category (id,name) VALUES(1,'House CH');
INSERT INTO expense.category (id,name) VALUES(2,'House IT');
INSERT INTO expense.category (id,name) VALUES(3,'Child CH');
INSERT INTO expense.category (id,name) VALUES(4,'Child IT');
INSERT INTO expense.category (id,name) VALUES(5,'Travel');
INSERT INTO expense.category (id,name) VALUES(6,'Health');
INSERT INTO expense.category (id,name) VALUES(7,'Insurance');
INSERT INTO expense.category (id,name) VALUES(8,'Tax');
INSERT INTO expense.category (id,name) VALUES(9,'Utility');
INSERT INTO expense.category (id,name) VALUES(10,'Discretionary');
INSERT INTO expense.category (id,name) VALUES(11,'Groceries');
INSERT INTO expense.category (id,name) VALUES(12,'Pension');

-- EXPENSE.X