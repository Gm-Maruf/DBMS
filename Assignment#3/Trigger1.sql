CREATE DATABASE Trigger1;

USE Trigger1;

CREATE TABLE table1(
		A int,
		B varchar(20),
		C int
);


CREATE TABLE table2(
		A int,
		B varchar(20),
        C int,
        DT varchar(50)
);

INSERT table1 VALUES(1,'A1',3000);
INSERT table1 VALUES(1,'B1',3000);
INSERT table1 VALUES(1,'C1',3000);

CREATE TRIGGER trigger1 
BEFORE UPDATE ON table1 
FOR EACH ROW
UPDATE table2 
SET A1=new.A1, B=new.B, C=new.C, DT=now()
WHERE A1=new.A1 AND (C-new.C>=100 OR new.C-C>=100);