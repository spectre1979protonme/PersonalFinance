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

-- EXPENSE.EXPENSE_TYPE

CREATE TABLE expense.expense_type (
    id smallint,
    category smallint NOT NULL,
    name varchar(50) NOT NULL,
    currency smallint NOT NULL,
    mandatory boolean NOT NULL,
    deductible boolean NOT NULL,
    investment boolean NOT NULL,

    PRIMARY KEY (id),

    CONSTRAINT fk_expensetype_category
        FOREIGN KEY (category)
        REFERENCES expense.category (id),

    CONSTRAINT fk_expensetype_currency
        FOREIGN KEY (currency)
        REFERENCES forex.currency (id)
);

-- EXPENSE.EXPENSE_PER_YEAR

CREATE TABLE expense.expense_per_year (
    id integer ,
    expense_type_id smallint NOT NULL,
    name varchar(50) NOT NULL,
    year integer NOT NULL,
    est_amount_month numeric(18,2) NOT NULL, --estimated amount per month
    est_amount_year numeric(18,2) NOT NULL, --estimate amount per year
	amount_month numeric(18,2) NULL, --real expense per month
	amount_year numeric(18,2) NULL, --real expense per year
    month_schedule smallint NOT NULL,

	PRIMARY KEY(id),
	
    CONSTRAINT fk_expense_per_year_type
        FOREIGN KEY (expense_type_id)
        REFERENCES expense.expense_type (id)
);