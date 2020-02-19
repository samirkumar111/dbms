CREATE TABLE CUSTOMER (CUST int, cname varchar2(25), city varchar2(25), PRIMARY KEY(CUST));
CREATE TABLE CORDER (orderNO int, odate date, cust int, ordAmt int,PRIMARY KEY(ORDERNO), FOREIGN KEY(CUST) REFERENCES CUSTOMER(CUST) ON DELETE CASCADE);
CREATE TABLE ITEM (item  int, unit_price int,PRIMARY KEY(ITEM));
DROP TABLE ORDER_ITEM;
DROP TABLE CORDER;
DROP TABLE ITEM;
DROP TABLE CUSTOMER;
CREATE TABLE ORDER_ITEM (orderNO  int, item  int, qty int,PRIMARY KEY(orderNO),FOREIGN KEY(orderNO) REFERENCES CORDER(orderNO) ON DELETE CASCADE,FOREIGN KEY(ITEM) REFERENCES ITEM(ITEM) ON DELETE CASCADE);
CREATE TABLE WAREHOUSE (warehouse  int, city varchar2(25), PRIMARY KEY(warehouse));
CREATE TABLE SHIPMENT (orderNO  int, warehouse  int, ship_date date, FOREIGN KEY(orderNO) REFERENCES ORDER_ITEM(orderNO) ON DELETE CASCADE, FOREIGN KEY(warehouse) REFERENCES warehouse(warehouse) ON DELETE CASCADE);
INSERT INTO CUSTOMER VALUES();