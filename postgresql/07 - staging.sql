-- STAGING.MARKET_DATA

CREATE TABLE staging.market_data (
    ticker      VARCHAR(20) NOT NULL,
    trade_date  DATE NOT NULL,
    open_price  NUMERIC(12,6),
    high_price  NUMERIC(12,6),
    low_price   NUMERIC(12,6),
    close_price NUMERIC(12,6),
    volume      BIGINT,

    PRIMARY KEY (ticker, trade_date)
);

ALTER TABLE IF EXISTS staging.market_data
    OWNER to postgres;