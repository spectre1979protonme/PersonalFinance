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



