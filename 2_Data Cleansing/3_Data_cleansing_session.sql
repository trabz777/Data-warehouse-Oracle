Select "LocumID" from "session" where "LocumID" = '0' or "LocumID" is null;
update "session" set "LocumID" = '11' where "LocumID" in 
(Select "LocumID" from "session" where "LocumID" = '0' or "LocumID" is null);

Select "SessionID" from "session" where "Type" = '0' or "Type" is null;
update "session" set "Type" = '5' where "SessionID" in 
(Select "SessionID" from "session" where "Type" = '0' or "Type" is null);

Select "SessionStart" from "session";