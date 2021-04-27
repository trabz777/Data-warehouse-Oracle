CREATE SEQUENCE time_seq
 START WITH     1
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

INSERT into TIME_DIM(TIME_ID,FULLDATE,DAYNAME,DAYOFWEEK, DAYOFMONTH, WEEKOFYEAR, WEEKSTARTDATE, MONTHNUMBER, MONTHNAME, QUARTER, YEAROFDATE) 
SELECT 
time_seq.nextval,
d,
to_char(d,'Day'),
to_char(d,'D'),
to_char(d,'DD'),
to_char(d,'IW'), 
d+1-to_char(d,'D'),
to_number(to_char(d,'MM')),
to_char(d,'Month'),
to_char(d,'YYYYQ'),
to_char(d,'YYYY')
from (Select distinct "session"."SessionDate" d from "session");

INSERT into TIME_DIM(TIME_ID,FULLDATE,DAYNAME,DAYOFWEEK, DAYOFMONTH, WEEKOFYEAR, WEEKSTARTDATE, MONTHNUMBER, MONTHNAME, QUARTER, YEAROFDATE) 
SELECT 
time_seq.nextval,
d,
to_char(d,'Day'),
to_char(d,'D'),
to_char(d,'DD'),
to_char(d,'IW'), 
d+1-to_char(d,'D'),
to_number(to_char(d,'MM')),
to_char(d,'Month'),
to_char(d,'YYYYQ'),
to_char(d,'YYYY')
from (Select distinct "REQUEST_DIM"."REQUEST_DATE" d from "REQUEST_DIM");