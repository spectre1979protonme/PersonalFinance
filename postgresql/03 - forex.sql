-- FOREX.CURRENCY

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

-- FOREX.PAIR

CREATE TABLE forex.pair
(
    id smallint,
    name character varying(50),
	yfTicker character varying(50),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS forex.pair
    OWNER to postgres;

INSERT INTO forex.pair (id,name,yfTicker) VALUES(1,'EURCHF','EURCHF=X');
INSERT INTO forex.pair (id,name,yfTicker) VALUES(2,'USDCHF','USDCHF=X');
INSERT INTO forex.pair (id,name,yfTicker) VALUES(3,'EURUSD','EURUSD=X');

-- FOREX.FXMONTHAVG

CREATE TABLE forex.fxmonthavg (
    pair      SMALLINT NOT NULL,
    year      SMALLINT NOT NULL,
    month     SMALLINT NOT NULL,
    value 	  NUMERIC(18,10) NOT NULL,
    last_update   TIMESTAMP NOT NULL,

    CONSTRAINT pk_fxmonthavg
        PRIMARY KEY (pair, year, month),

    CONSTRAINT fk_fxmonthavg_pair
        FOREIGN KEY (pair)
        REFERENCES forex.pair (id)
);
