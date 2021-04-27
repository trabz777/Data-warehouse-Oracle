
--The number of Sessions covered by month
Select t.monthnumber, t.monthname, count(session_id) 
from SESSIONS_FACT s inner join TIME_DIM t on s.time_id = t.time_id 
group by t.monthnumber, t.monthname
order by t.monthnumber;







