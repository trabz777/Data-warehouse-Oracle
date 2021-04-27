declare
Cursor c_locumdetails is
SELECT "LocumID","Title","First Name","Gender","Address Line 4","Town","Postcode","County","Tel#6ome","Date application was sent","Current Status","Date of Birth","Nationality"
from "locumDetails";
begin
for c_rec in c_locumdetails loop

insert into LOCUM_DIM values(

c_rec."LocumID", 
c_rec."Title", 
c_rec."First Name", 
c_rec."Address Line 4", 
c_rec."Town", 
c_rec."Postcode", 
c_rec."Tel#6ome",
c_rec."Date application was sent",
c_rec."Gender", 
c_rec."Current Status",
c_rec."Date of Birth", 
c_rec."Nationality", 
c_rec."County" );
end loop;
end;

Update LOCUM_DIM set GENDER = 'female' where GENDER = '1';
Update LOCUM_DIM set GENDER = 'male' where GENDER = '2';

Update LOCUM_DIM set CURRENT_STATUS2 = 'Not Known' where CURRENT_STATUS = 0.0;
Update LOCUM_DIM set CURRENT_STATUS2 = 'Principal Full-Time' where CURRENT_STATUS = 1.0;
Update LOCUM_DIM set CURRENT_STATUS2 = 'Principal Part-Time' where CURRENT_STATUS = 2.0;
Update LOCUM_DIM set CURRENT_STATUS2 = 'Assistant' where CURRENT_STATUS = 3.0;
Update LOCUM_DIM set CURRENT_STATUS2 = 'Locum' where CURRENT_STATUS = 4.0;
Update LOCUM_DIM set CURRENT_STATUS2 = 'Retainer' where CURRENT_STATUS = 5.0;
Update LOCUM_DIM set CURRENT_STATUS2 = 'Retired' where CURRENT_STATUS = 6.0;
Update LOCUM_DIM set CURRENT_STATUS2 = 'Other' where CURRENT_STATUS = 7.0;
Update LOCUM_DIM set CURRENT_STATUS2 = 'Not Known' where CURRENT_STATUS = 8.0;

Update LOCUM_DIM set NATIONALITY = 'British' where NATIONALITY = '1';
Update LOCUM_DIM set NATIONALITY = 'Irish' where NATIONALITY = '2';
Update LOCUM_DIM set NATIONALITY = 'Hindi' where NATIONALITY = '3';
Update LOCUM_DIM set NATIONALITY = 'Arabic' where NATIONALITY = '4';
Update LOCUM_DIM set NATIONALITY = 'African' where NATIONALITY = '5';
Update LOCUM_DIM set NATIONALITY = 'Greek' where NATIONALITY = '6';
Update LOCUM_DIM set NATIONALITY = 'Not known' where NATIONALITY = '7';
Update LOCUM_DIM set NATIONALITY = 'New Zealand' where NATIONALITY = '8';
Update LOCUM_DIM set NATIONALITY = 'South Africa' where NATIONALITY = '9';
Update LOCUM_DIM set NATIONALITY = 'European' where NATIONALITY = '10';
Update LOCUM_DIM set NATIONALITY = 'Chinese' where NATIONALITY = '11';
Update LOCUM_DIM set NATIONALITY = 'Australian' where NATIONALITY = '12';
Update LOCUM_DIM set NATIONALITY = 'Indian' where NATIONALITY = '13';