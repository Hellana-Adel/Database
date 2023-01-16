--------------------------------------------------------
--  File created - Monday-March-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence AGENCY_AUTO
--------------------------------------------------------

   CREATE SEQUENCE  "AGENCY_AUTO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CUSTOMERS_AUTO
--------------------------------------------------------

   CREATE SEQUENCE  "CUSTOMERS_AUTO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VEHICLE_AUTO
--------------------------------------------------------

   CREATE SEQUENCE  "VEHICLE_AUTO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AGENCY
--------------------------------------------------------

  CREATE TABLE "AGENCY" 
   (	"ID_TYPE" NUMBER, 
	"TYPE" VARCHAR2(50), 
	"QUANTITY" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER(9,0) DEFAULT 0, 
	"F_NAME" VARCHAR2(50), 
	"L_NAME" VARCHAR2(50), 
	"EMAIL" VARCHAR2(50), 
	"ADDRESS" VARCHAR2(50), 
	"PHONE" VARCHAR2(50), 
	"JOB_TITLE" VARCHAR2(50), 
	"CNIC" VARCHAR2(50) DEFAULT 0
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table RENT
--------------------------------------------------------

  CREATE TABLE "RENT" 
   (	"F_NAME" VARCHAR2(50), 
	"L_NAME" VARCHAR2(50), 
	"CUSTOMER_ID" NUMBER, 
	"MODEL" VARCHAR2(50), 
	"SERIAL_NO" NUMBER, 
	"F_DATE" VARCHAR2(50), 
	"L_DATE" VARCHAR2(50), 
	"PRICE" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table VEHICLE
--------------------------------------------------------

  CREATE TABLE "VEHICLE" 
   (	"SERIAL_N0" NUMBER, 
	"MODEL" VARCHAR2(50), 
	"COLOUR" VARCHAR2(50), 
	"SPEED" VARCHAR2(50), 
	"PRICE" VARCHAR2(50), 
	"ENGINE_DISPLACECMENT_CC" VARCHAR2(50), 
	"ENGINE_TYPE" VARCHAR2(50), 
	"TYRE_SIZE" VARCHAR2(50), 
	"BREAK_SYSTEM" VARCHAR2(50), 
	"SAFETY_SECURITY" VARCHAR2(50), 
	"ID_TYPE" NUMBER(9,0), 
	"ID_VEHICLE" NUMBER(9,0)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE AGENCY
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AGENCY
Insert into AGENCY (ID_TYPE,TYPE,QUANTITY) values (1,'car',15);
Insert into AGENCY (ID_TYPE,TYPE,QUANTITY) values (2,'MOTO',6);

---------------------------------------------------
--   END DATA FOR TABLE AGENCY
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CUSTOMERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CUSTOMERS
Insert into CUSTOMERS (CUSTOMER_ID,F_NAME,L_NAME,EMAIL,ADDRESS,PHONE,JOB_TITLE,CNIC) values (1,'beshoy','ehab','beshoy@gmail.com','tanta , el nahaas st','01068173639','studient','32151235165457');
Insert into CUSTOMERS (CUSTOMER_ID,F_NAME,L_NAME,EMAIL,ADDRESS,PHONE,JOB_TITLE,CNIC) values (2,'toka','newer','toka@gmail.com','menouf, AHMED STR','01036452367','studient','12332112336541');
Insert into CUSTOMERS (CUSTOMER_ID,F_NAME,L_NAME,EMAIL,ADDRESS,PHONE,JOB_TITLE,CNIC) values (3,'basyiony','saad','beso@gmail.com','basyoun , omar st','01036321235','tailor','10203020142365');
Insert into CUSTOMERS (CUSTOMER_ID,F_NAME,L_NAME,EMAIL,ADDRESS,PHONE,JOB_TITLE,CNIC) values (4,'tasbeeh','gamal','tasbeeh@gmail.com','alex , sedi beshir','01068126481','cheef','12547856941012');
Insert into CUSTOMERS (CUSTOMER_ID,F_NAME,L_NAME,EMAIL,ADDRESS,PHONE,JOB_TITLE,CNIC) values (5,'hager','shaaban','hager@gmail.com','tanta el galaa st','01036213521','coocker','12033654101231');

---------------------------------------------------
--   END DATA FOR TABLE CUSTOMERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RENT
Insert into RENT (F_NAME,L_NAME,CUSTOMER_ID,MODEL,SERIAL_NO,F_DATE,L_DATE,PRICE) values ('beshoy','ehab',1,'BMW',123365478,'2','5','1000 per day');
Insert into RENT (F_NAME,L_NAME,CUSTOMER_ID,MODEL,SERIAL_NO,F_DATE,L_DATE,PRICE) values ('hager','shaaban',5,'DAYON',456123789,'6','8','700');
Insert into RENT (F_NAME,L_NAME,CUSTOMER_ID,MODEL,SERIAL_NO,F_DATE,L_DATE,PRICE) values ('toka','newer',2,'BMW',123365478,'23','27','1000 per day');
Insert into RENT (F_NAME,L_NAME,CUSTOMER_ID,MODEL,SERIAL_NO,F_DATE,L_DATE,PRICE) values ('tasbeeh','gamal',4,'BMW',123456789,'30','32','1500');
Insert into RENT (F_NAME,L_NAME,CUSTOMER_ID,MODEL,SERIAL_NO,F_DATE,L_DATE,PRICE) values ('basyiony','saad',3,'BMW',123365478,'1','5','1000 per day');

---------------------------------------------------
--   END DATA FOR TABLE RENT
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE VEHICLE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into VEHICLE
Insert into VEHICLE (SERIAL_N0,MODEL,COLOUR,SPEED,PRICE,ENGINE_DISPLACECMENT_CC,ENGINE_TYPE,TYRE_SIZE,BREAK_SYSTEM,SAFETY_SECURITY,ID_TYPE,ID_VEHICLE) values (123365478,'BMW','RED','500 km/h','1000 per day','1498','sohc 16 / val','215 / 55r 16','4 wheel desc ABS','airbag',1,48);
Insert into VEHICLE (SERIAL_N0,MODEL,COLOUR,SPEED,PRICE,ENGINE_DISPLACECMENT_CC,ENGINE_TYPE,TYRE_SIZE,BREAK_SYSTEM,SAFETY_SECURITY,ID_TYPE,ID_VEHICLE) values (456123789,'DAYON','WHITE','200','700','1200','DDF','210','2 WHEELS','AIRBAG',2,81);
Insert into VEHICLE (SERIAL_N0,MODEL,COLOUR,SPEED,PRICE,ENGINE_DISPLACECMENT_CC,ENGINE_TYPE,TYRE_SIZE,BREAK_SYSTEM,SAFETY_SECURITY,ID_TYPE,ID_VEHICLE) values (987123654,'DAYON','BLACK','300','500','1000','DDF','200','2WHEELS','AIRBAG',2,82);
Insert into VEHICLE (SERIAL_N0,MODEL,COLOUR,SPEED,PRICE,ENGINE_DISPLACECMENT_CC,ENGINE_TYPE,TYRE_SIZE,BREAK_SYSTEM,SAFETY_SECURITY,ID_TYPE,ID_VEHICLE) values (123456789,'BMW','BLACK','700','1500','1500','ZZD','220','4 WHEELS','AIRBAG',1,62);

---------------------------------------------------
--   END DATA FOR TABLE VEHICLE
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table RENT
--------------------------------------------------------

  ALTER TABLE "RENT" ADD PRIMARY KEY ("SERIAL_NO", "F_DATE", "L_DATE") ENABLE;
--------------------------------------------------------
--  Constraints for Table VEHICLE
--------------------------------------------------------

  ALTER TABLE "VEHICLE" ADD CONSTRAINT "ID_SERIAL_NO" PRIMARY KEY ("SERIAL_N0") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "CUSTOMERS" ADD CONSTRAINT "ID_PK" PRIMARY KEY ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table AGENCY
--------------------------------------------------------

  ALTER TABLE "AGENCY" ADD CONSTRAINT "TYPE_PK" PRIMARY KEY ("ID_TYPE") ENABLE;
--------------------------------------------------------
--  DDL for Index ID_SERIAL_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "ID_SERIAL_NO" ON "VEHICLE" ("SERIAL_N0") 
  ;
--------------------------------------------------------
--  DDL for Index TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TYPE_PK" ON "AGENCY" ("ID_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ID_PK" ON "CUSTOMERS" ("CUSTOMER_ID") 
  ;


--------------------------------------------------------
--  Ref Constraints for Table RENT
--------------------------------------------------------

  ALTER TABLE "RENT" ADD CONSTRAINT "RENT_CUSTOMERS_FK1" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "CUSTOMERS" ("CUSTOMER_ID") ENABLE;
 
  ALTER TABLE "RENT" ADD CONSTRAINT "RENT_VEHICLE_FK1" FOREIGN KEY ("SERIAL_NO")
	  REFERENCES "VEHICLE" ("SERIAL_N0") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEHICLE
--------------------------------------------------------

  ALTER TABLE "VEHICLE" ADD CONSTRAINT "VEHICLE_AGENCY_FK1" FOREIGN KEY ("ID_TYPE")
	  REFERENCES "AGENCY" ("ID_TYPE") ENABLE;
--------------------------------------------------------
--  DDL for Trigger AGENCY_TRIGGER
--------------------------------------------------------
-- Unable to Render DDL with DBMS_METADATA using internal generator.
CREATE
TRIGGER  "AGENCY_TRIGGER" 
BEFORE INSERT ON AGENCY
FOR EACH ROW 
BEGIN
  SELECT AGENCY_AUTO.NEXTVAL
  INTO   :new.id_type
  FROM   dual;
END;

 

/

--------------------------------------------------------
--  DDL for Trigger CUSTOMERS_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CUSTOMERS_TRIGGER" 
BEFORE INSERT ON CUSTOMERS
FOR EACH ROW 
BEGIN
  SELECT CUSTOMERS_AUTO.NEXTVAL
  INTO   :new.customer_id
  FROM   dual;
END;


/
ALTER TRIGGER "CUSTOMERS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VEHICLE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "VEHICLE_TRIGGER" 
BEFORE INSERT ON VEHICLE
FOR EACH ROW 
BEGIN
  SELECT VEHICLE_AUTO.NEXTVAL
  INTO   :new.id_vehicle
  FROM   dual;
END;


/
ALTER TRIGGER "VEHICLE_TRIGGER" ENABLE;
