--MARKET.MARKET_DATA

CREATE TABLE market.market_data
(
    ticker character varying(20) NOT NULL,
    trade_date date NOT NULL,
    open_price numeric(12,6),
    high_price numeric(12,6),
    low_price numeric(12,6),
    close_price numeric(12,6),
    volume bigint,
    CONSTRAINT market_data_pkey PRIMARY KEY (ticker, trade_date)
);

ALTER TABLE IF EXISTS market.market_data
    OWNER to postgres;