drop table gift;
drop table customer1;
drop table giftorder;

create table gift(
giftid varchar2(5) PRIMARY KEY CHECK(giftid LIKE 'G%'),
giftname varchar2(20) UNIQUE NOT NULL,
category varchar2(15),
price NUMBER check(price>0),
discount NUMBER,
availability NUMBER
);

create table customer1(
customerid varchar2(5) PRIMARY KEY CHECK(customerid LIKE 'C%'),
customername VARCHAR2(15),
location VARCHAR2(15)
);

create table giftorder(
orderid NUMBER PRIMARY KEY,
customerid VARCHAR2(5)  REFERENCES customer1(customerid),
giftid VARCHAR2(5) REFERENCES gift(giftid),
quantity NUMBER,
shippingcity VARCHAR2(15)
);

delete from giftorder;
delete from gift;
delete from customer1;

INSERT INTO gift VALUES('G101','Dream Catcher','Showpiece','500','10','63');
INSERT INTO gift VALUES('G102','Cinnamon Candles','Home Decor','550','5','35');
INSERT INTO gift VALUES('G103','Watch Box','Utilities','2000','20','18');
INSERT INTO gift VALUES('G104','Music Plant Lamp','Home Decor','1500','15','5');
INSERT INTO gift VALUES('G105','Crystal Platter','Utilities','2999','7','10');
INSERT INTO gift VALUES('G106','Crystal Chariot','Showpiece','2000','15','32');
INSERT INTO gift VALUES('G107','Wood Coaster Set','Utilities','1300','30','30');
INSERT INTO gift VALUES('G108','Golden Foil Rose','Showpiece','500','30','30');
INSERT INTO gift VALUES('G109','Photo Frames','Home Decor','500','30','30');
INSERT INTO customer1 VALUES('C101','Jack','Delhi');
INSERT INTO customer1 VALUES('C102','John','Bangalore');
INSERT INTO customer1 VALUES('C103','Sam','Mumbai');
INSERT INTO customer1 VALUES('C104','Andrew','Bangalore');
INSERT INTO customer1 VALUES('C105','Anne','Delhi');
INSERT INTO customer1 VALUES('C106','Maria','Mumbai');
INSERT INTO customer1 VALUES('C107','Jeny','Bangalore');
INSERT INTO giftorder VALUES('1001','C102','G104','2','Delhi');
INSERT INTO giftorder VALUES('1002','C103','G102','5','Bangalore');
INSERT INTO giftorder VALUES('1003','C105','G101','3','Bangalore');
INSERT INTO giftorder VALUES('1004','C102','G104','1','Bangalore');
INSERT INTO giftorder VALUES('1005','C101','G103','9','Mysore');
INSERT INTO giftorder VALUES('1006','C102','G101','8','Mumbai');
INSERT INTO giftorder VALUES('1007','C105','G106','4','Chennai');
INSERT INTO giftorder VALUES('1008','C105','G107','4','Chennai');
INSERT INTO giftorder VALUES('1009','C105','G108','5','Mumbai');
INSERT INTO giftorder VALUES('1010','C106','G105','6','Mysore');
