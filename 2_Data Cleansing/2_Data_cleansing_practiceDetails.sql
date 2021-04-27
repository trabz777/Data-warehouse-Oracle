update "practiceDetails" set "Address_Line_1" = CONCAT("Practice Name"||',',"Address_Line_1");
update "practiceDetails" set "Address_Line_1" = CONCAT("Address_Line_1"||',',"Address Line 2");

Select "PracticeID" from "practiceDetails" where "Address_Line_1" is null;
Delete from "practiceDetails" where "PracticeID" = 57;

Select "PracticeID" from "practiceDetails" where "Town" is null;
update "practiceDetails" set "Town" = "Address Line 2" where "PracticeID" in 
(Select "PracticeID" from "practiceDetails" where "Town" is null);

Select "PracticeID" from "practiceDetails" where "County" is null;
update "practiceDetails" set "County" = "Town" where "PracticeID" in 
(Select "PracticeID" from "practiceDetails" where "County" is null);

Select "PracticeID" from "practiceDetails" where "Fax#" is null;
update "practiceDetails" set "Fax#" = '1111 111 1111' where "PracticeID" in 
(Select "PracticeID" from "practiceDetails" where "Fax#" is null);

Select "PracticeID" from "practiceDetails" where "Bypass#" is null;
update "practiceDetails" set "Bypass#" = '1111 111 1111' where "PracticeID" in 
(Select "PracticeID" from "practiceDetails" where "Bypass#" is null);

Select "PracticeID" from "practiceDetails" where "Approximate List Size" is null;
update "practiceDetails" set "Approximate List Size" = 'Not known' where "PracticeID" in 
(Select "PracticeID" from "practiceDetails" where "Approximate List Size" is null);

Select "PracticeID" from "practiceDetails" where "Out of Hours Arrangement" is null;
update "practiceDetails" set "Out of Hours Arrangement" = 'Not known' where "PracticeID" in 
(Select "PracticeID" from "practiceDetails" where "Out of Hours Arrangement" is null);

Select "PracticeID" from "practiceDetails" where "LNT practice code" is null;
update "practiceDetails" set "LNT practice code" = 'Not known' where "PracticeID" in 
(Select "PracticeID" from "practiceDetails" where "LNT practice code" is null);

Select "PracticeID" from "practiceDetails" where "LNT GP code" is null;
update "practiceDetails" set "LNT GP code" = 'Not known' where "PracticeID" in 
(Select "PracticeID" from "practiceDetails" where "LNT GP code" is null);
