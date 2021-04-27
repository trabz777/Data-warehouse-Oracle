declare
Cursor c_session is
Select "SessionID","RequestID","LocumID","SessionDate","SessionStart","SessionEnd","Status","Type","DoctorCovered","DoPrint"
from "session";

a NUMBER(10);
b NUMBER(10);
c NUMBER(10);
d NUMBER(10);
n NUMBER;

begin
for c_rec in c_session loop

a:= TO_NUMBER(c_rec."SessionID");
b:= TO_NUMBER(c_rec."RequestID");
c:= TO_NUMBER(c_rec."LocumID");
d:= TO_NUMBER(c_rec."Type");
n:= null;

insert into SESSIONS_FACT values(
a, 
b, 
n, 
c, 
d, 
c_rec."SessionEnd", 
c_rec."SessionStart",
c_rec."Status",
c_rec."SessionDate", 
n );
end loop;
end;

Update SESSIONS_FACT sf set sf.PRACTICE_ID = (Select PRACTICE_ID from REQUEST_DIM rq where rq.request_id like sf.request_id);

Update SESSIONS_FACT sf set sf.TIME_ID = (Select TIME_ID from TIME_DIM td where td.fulldate like sf.session_date);




