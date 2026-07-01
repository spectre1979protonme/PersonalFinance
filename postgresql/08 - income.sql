-- INCOME.SALARY

CREATE TABLE income.salary (
    year SMALLINT NOT NULL,
    month SMALLINT NOT NULL,       
    salary NUMERIC(18,2) NOT NULL,
    currency SMALLINT NOT NULL DEFAULT 1,

    CONSTRAINT pk_salary
        PRIMARY KEY (year, month),

    CONSTRAINT fk_salary_currency
        FOREIGN KEY (currency)
        REFERENCES forex.currency (id)
);