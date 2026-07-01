--PENSION.PLAN_TYPE

CREATE TABLE pension.plan_type (
    id          smallint,
    name character varying(50),
	max_deposit integer,
	yearly_withdrawal integer,
	info text,
	currency smallint,
	constraint "fk_plantype_currency"
	foreign key (currency)
	references forex.currency (id),
    PRIMARY KEY (id)
);

insert into pension.plan_type (id,name,max_deposit,yearly_withdrawal,info,currency)
values (1,'2nd Pillar',NULL,NULL,NULL,1);
insert into pension.plan_type (id,name,max_deposit,yearly_withdrawal,info,currency)
values (2,'3rd Pillar',7056,50000,'https://finpension.ch/en/capital-withdrawal-tax-compared/',1);

-- PENSION.PLAN

CREATE TABLE pension.plan (
    id smallint,
    type smallint,
    name character varying(50),
    portfolio_id smallint,

	PRIMARY KEY (id),
	
    CONSTRAINT fk_plan_portfolio
        FOREIGN KEY (portfolio_id)
        REFERENCES asset.portfolio (id),

    CONSTRAINT fk_plan_type
        FOREIGN KEY (type)
        REFERENCES pension.plan_type (id)
);

INSERT INTO pension.plan (id,type,name,portfolio_id) 
VALUES (1,1,'SIX Group Staff Pension Fund',NULL);
INSERT INTO pension.plan (id,type,name,portfolio_id) 
VALUES (2,2,'FinPension',2);


