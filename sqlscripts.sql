CREATE DATABASE sales;

\c sales

CREATE USER salesadmin WITH PASSWORD 'XXXXX';

GRANT ALL PRIVILEGES ON DATABASE sales to salesadmin;

GRANT ALL PRIVILEGES ON TABLE sales to salesadmin;

CREATE TABLE headers (
   ORDERID       INT PRIMARY KEY     NOT NULL,
   STATUS   TEXT NOT NULL,
   CUSTNO   TEXT NOT NULL,
   CUSTPO   TEXT,
   CONTACT  TEXT NOT NULL,
   INSIDESALES        TEXT    NOT NULL,
   OUTSIDESALES TEXT NOT NULL,
   TAXCODE INT,
   CREDITCODE INT,
   TERMSCODE INT,
   ENTRYDATE DATE,
   VALUE FLOAT NOT NULL
);

INSERT INTO leads (id, status, contact, sales, value) VALUES
('1','Lead','Devilbiss','Arie','20000.00'),
('2','Negotiation','Phillips','Lynda','45000.00'),
('3','Proposal','Phillips','Lynda','20000.00'),
('4','Lead','MSA','Deb','1500.00');
