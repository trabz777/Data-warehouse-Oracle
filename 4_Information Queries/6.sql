
--The number of requests not covered by month
Select t.monthnumber,t.monthname,s.status, count(distinct s.request_id) as "Requests not covered" from SESSIONS_FACT s inner join
TIME_DIM t on s.time_id = t.time_id where
s.status = 'Cancelled' or s.status = 'LocumCancelled' or s.status = 'PracticeCancelled' 
group by t.monthnumber,t.monthname, s.status
order by t.monthnumber;







