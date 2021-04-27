update "locumDetails" set "First Name" = CONCAT("First Name"||' ',"Last Name");
alter table "locumDetails" drop column "Last Name";
update "locumDetails" set "First Name" = 'Pearce' where "LocumID" = 38.0;
update "locumDetails" set "Address Line 4" = CONCAT("Address Line 4"||',',"Address Line 2");
update "locumDetails" set "Town" = "Address Line 2" where "Town" is null;
update "locumDetails" set "Town" = 'Greenwich' where "Town" is null;
alter table "locumDetails" drop column "Address Line 2";

update "locumDetails" set "County" = "Town" where "County" is null;
update "locumDetails" set "County" = 'London' where "County" is null;


alter table "locumDetails" drop column "Fax#Home";
alter table "locumDetails" drop column "Tel#Work";
alter table "locumDetails" drop column "Fax#Work";
alter table "locumDetails" drop column "Mobile Phone#";

update "locumDetails" set "Postcode" = 'unknown' where "Postcode" is null;

update "locumDetails" set "Gender" ='Not Known' where "Gender" = '0';
update "locumDetails" set "Gender" ='Not Known' where "Gender" is null;



update "locumDetails" set "Tel#6ome" = '1111 111 1111' where "Tel#6ome"is null;

update "locumDetails" set "Date application was sent" = '01-JAN-01' where "Date application was sent" is null;

alter table "locumDetails" add "dob" date;
update "locumDetails" set "dob" = to_date("Date of birth",'DD/MM/YYYY');
alter table "locumDetails" drop column "Date of birth";
alter table "locumDetails" rename column "dob" to "Date of Birth";
update "locumDetails" set "Date of Birth" = '01-JAN-01' where "Date of Birth" is null;

update "locumDetails" set "Nationality" = 'Not known' where "Nationality" is null;
