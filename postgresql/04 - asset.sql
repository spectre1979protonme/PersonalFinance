-- ASSET.DISTRIBUTIONPOLICY

CREATE TABLE asset.distribution_policy
(
    id smallint,
    name character varying(50),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS asset.distribution_policy
    OWNER to postgres;

INSERT INTO asset.distribution_policy (id,name) VALUES(1,'Accumulating');
INSERT INTO asset.distribution_policy (id,name) VALUES(2,'Distributing');
INSERT INTO asset.distribution_policy (id,name) VALUES(3,'Not Available');

-- ASSET.MARKET

CREATE TABLE asset.market
(
    id smallint,
	code character varying(50),
    name character varying(50),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS asset.market
    OWNER to postgres;

INSERT INTO asset.market (id,code,name) VALUES(1,'---','Not Listed');
INSERT INTO asset.market (id,code,name) VALUES(2,'IBIS2','XETRA');
INSERT INTO asset.market (id,code,name) VALUES(3,'AEB','Euronext NL Stocks');
INSERT INTO asset.market (id,code,name) VALUES(4,'BVME','Borsa Italiana');
INSERT INTO asset.market (id,code,name) VALUES(5,'EBS','Six Swiss Exchange');
INSERT INTO asset.market (id,code,name) VALUES(6,'SBF','Euronext France');
INSERT INTO asset.market (id,code,name) VALUES(7,'NYSE','New York Stock Exchange');

-- ASSET.INSTRUMENT_TYPE

CREATE TABLE asset.instrument_type
(
    id smallint,
    name character varying(50),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS asset.instrument_type
    OWNER to postgres;

INSERT INTO asset.instrument_type (id,name) VALUES(1,'Stock');
INSERT INTO asset.instrument_type (id,name) VALUES(2,'Government Bond');
INSERT INTO asset.instrument_type (id,name) VALUES(3,'Corporate Bond');
INSERT INTO asset.instrument_type (id,name) VALUES(4,'ETF');
INSERT INTO asset.instrument_type (id,name) VALUES(5,'ETC');
INSERT INTO asset.instrument_type (id,name) VALUES(6,'ETN');
INSERT INTO asset.instrument_type (id,name) VALUES(7,'Mutual Fund');
INSERT INTO asset.instrument_type (id,name) VALUES(8,'Cash');
INSERT INTO asset.instrument_type (id,name) VALUES(9,'Real Estate');

-- ASSET.PORTFOLIO

CREATE TABLE asset.portfolio (
    id          smallint,
    name character varying(50),
	valid_from date,
	valid_to date,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS asset.portfolio
    OWNER to postgres;

INSERT INTO asset.portfolio (id,name,valid_from,valid_to) VALUES(1,'IBKR','2024-01-01',NULL);
INSERT INTO asset.portfolio (id,name,valid_from,valid_to) VALUES(2,'FinPension','2024-01-01',NULL);
INSERT INTO asset.portfolio (id,name,valid_from,valid_to) VALUES(3,'UBS','2018-01-01',NULL);
INSERT INTO asset.portfolio (id,name,valid_from,valid_to) VALUES(4,'IBKR Kids','2024-07-05',NULL);

-- ASSET.X