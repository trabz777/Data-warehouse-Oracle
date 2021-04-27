
--A list of Locum requests by town by week
Select l.town, t.weekofyear, t.weekstartdate, count(distinct s.request_id) as "Number of requests" from SESSIONS_FACT s inner join
LOCUM_DIM l on s.locum_id = l.locum_id inner join 
REQUEST_DIM r on s.request_id = r.request_id inner join
TIME_DIM t on r.request_date = t.fulldate 
group by t.weekofyear, t.weekstartdate, l.town
order by t.weekofyear;





