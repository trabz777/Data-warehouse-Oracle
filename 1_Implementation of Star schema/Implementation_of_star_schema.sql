
  CREATE TABLE "AZ5645A"."REQUEST_DIM" 
   ("REQUEST_ID" NUMBER NOT NULL ENABLE, 
	"PRACTICE_ID" VARCHAR2(20 BYTE), 
	"REQUEST_DATE" DATE, 
	 CONSTRAINT "REQUEST_DIM_PK" PRIMARY KEY ("REQUEST_ID")
   );
  
  CREATE TABLE "AZ5645A"."TYPE_COVER_DIM" 
   ("TYPE_COVER_ID" NUMBER NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(20 BYTE), 
	 CONSTRAINT "TYPE_COVER_DIM_PK" PRIMARY KEY ("TYPE_COVER_ID")
   );
   
  CREATE TABLE "AZ5645A"."LOCUM_DIM" 
   ("LOCUM_ID" NUMBER NOT NULL ENABLE, 
	"TITLE" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"ADDRESS" VARCHAR2(20 BYTE), 
	"TOWN" VARCHAR2(20 BYTE), 
	"POSTCODE" VARCHAR2(20 BYTE), 
	"TELEPHONE" VARCHAR2(20 BYTE), 
	"APPLICATION_DATE" DATE, 
	"GENDER" VARCHAR2(20 BYTE), 
	"CURRENT_STATUS" VARCHAR2(20 BYTE), 
	"DOB" DATE, 
	"NATIONALITY" VARCHAR2(20 BYTE), 
	"COUNTY" VARCHAR2(20 BYTE), 
	 CONSTRAINT "LOCUM_DIM_PK" PRIMARY KEY ("LOCUM_ID")
    );
 
 CREATE TABLE "AZ5645A"."PRACTICE_DIM" 
   (	"PRACTICE_ID" NUMBER NOT NULL ENABLE, 
	"ADDRESS" VARCHAR2(20 BYTE), 
	"TOWN" VARCHAR2(20 BYTE), 
	"COUNTY" VARCHAR2(20 BYTE), 
	"TELEPHONE" VARCHAR2(20 BYTE), 
	"FAX" VARCHAR2(20 BYTE), 
	"BYPASS_TEL" VARCHAR2(20 BYTE), 
	"LIST_SIZE" NUMBER, 
	"OUT_ARRANGEMENT" VARCHAR2(20 BYTE), 
	"LNT_PRACTICE_CODE" NUMBER, 
	"LNT_GP_CODE" VARCHAR2(20 BYTE), 
	"POSTCODE" VARCHAR2(20 BYTE), 
	 CONSTRAINT "PRACTICE_DIM_PK" PRIMARY KEY ("PRACTICE_ID")
    );

  CREATE TABLE "AZ5645A"."TIME_DIM" 
   ("TIME_ID" NUMBER NOT NULL ENABLE, 
	"FULLDATE" DATE, 
	"DAYNAME" VARCHAR2(10 BYTE), 
	"DAYOFWEEK" NUMBER, 
	"DAYOFMONTH" NUMBER, 
	"WEEKOFYEAR" NUMBER, 
	"WEEKSTARTDATE" DATE, 
	"MONTHNUMBER" NUMBER, 
	"MONTHNAME" VARCHAR2(20 BYTE), 
	"QUARTER" NUMBER, 
	"YEAROFDATE" NUMBER, 
    CONSTRAINT "TIME_DIM_PK" PRIMARY KEY ("TIME_ID")
   );
   
   ---------------------------------------------------------------
   
   CREATE TABLE "AZ5645A"."SESSIONS_FACT" 
   ("SESSION_ID" NUMBER NOT NULL ENABLE, 
	"REQUEST_ID" NUMBER, 
	"PRACTICE_ID" NUMBER, 
	"LOCUM_ID" NUMBER, 
	"TYPE_COVER_ID" NUMBER, 
	"SESSION_END" TIMESTAMP (6), 
	"SESSION_START" TIMESTAMP (6), 
	"STATUS" VARCHAR2(20 BYTE), 
	"SESSION_DATE" DATE, 
	"TIME_ID" NUMBER, 
	 CONSTRAINT "SESSIONS_FACT_PK" PRIMARY KEY ("SESSION_ID"),
     CONSTRAINT "SESSIONS_FACT_FK1" FOREIGN KEY ("REQUEST_ID")
     REFERENCES "AZ5645A"."REQUEST_DIM" ("REQUEST_ID") ENABLE, 
	 CONSTRAINT "SESSIONS_FACT_FK2" FOREIGN KEY ("PRACTICE_ID")
     REFERENCES "AZ5645A"."PRACTICE_DIM" ("PRACTICE_ID") ENABLE, 
	 CONSTRAINT "SESSIONS_FACT_FK3" FOREIGN KEY ("TYPE_COVER_ID")
     REFERENCES "AZ5645A"."TYPE_COVER_DIM" ("TYPE_COVER_ID") ENABLE, 
	 CONSTRAINT "SESSIONS_FACT_FK4" FOREIGN KEY ("LOCUM_ID")
     REFERENCES "AZ5645A"."LOCUM_DIM" ("LOCUM_ID") ENABLE,  
	 CONSTRAINT "SESSIONS_FACT_FK5" FOREIGN KEY ("TIME_ID")
     REFERENCES "AZ5645A"."TIME_DIM" ("TIME_ID") ENABLE
    );
    
    


   