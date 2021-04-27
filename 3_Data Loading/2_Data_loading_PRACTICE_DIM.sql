declare
Cursor c_practiceDetails is
SELECT "PracticeID","Address_Line_1","Town","County","Postcode","Telephone#","Fax#","Bypass#","Approximate List Size","Out of Hours Arrangement","LNT practice code","LNT GP code"
from "practiceDetails";

a NUMBER(4);

begin
for c_rec in c_practicedetails loop

a:= TO_NUMBER(c_rec."PracticeID");

insert into PRACTICE_DIM values(
a, 
c_rec."Address_Line_1", 
c_rec."Town", 
c_rec."County", 
c_rec."Telephone#", 
c_rec."Fax#", 
c_rec."Bypass#",
c_rec."Approximate List Size",
c_rec."Out of Hours Arrangement", 
c_rec."LNT practice code",
c_rec."LNT GP code", 
c_rec."Postcode" );
end loop;
end;

/*ORA-12899: value too large for column "EN8886C"."PRACTICE_DIM"."ADDRESS" (actual: 32, maximum: 20) increase the size from 20 to 50
Data type of Practice_ID, List_Size and LNT_Practice_Code changed to varchar2
ADDRESS size increased from 50 to 255*/