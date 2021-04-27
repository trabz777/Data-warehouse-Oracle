
--The number of Locum requests made by county by month
Select t.monthname,l.county, count(distinct s.request_id) as "Number of requests" from SESSIONS_FACT s inner join
LOCUM_DIM l on s.locum_id = l.locum_id inner join 
REQUEST_DIM r on s.request_id = r.request_id inner join
TIME_DIM t on r.request_date = t.fulldate 
group by t.monthname, l.county;








