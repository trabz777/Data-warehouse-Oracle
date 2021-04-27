declare
Cursor c_locumRequest is
SELECT "LocumRequestID","PracticeID","Request date"
from "locumRequest";

begin
for c_rec in c_locumrequest loop

insert into REQUEST_DIM values(
c_rec."LocumRequestID", 
c_rec."PracticeID", 
c_rec."Request date" );
end loop;
end;