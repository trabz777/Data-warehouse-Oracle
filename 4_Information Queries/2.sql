--The number of Requests made by type of cover by week
Select tc.description as "Type of cover",t.weekofyear, t.weekstartdate, count(distinct s.request_id) as "Number of requests" from TIME_DIM t 
inner join REQUEST_DIM r on r.request_date = t.fulldate inner join 
SESSIONS_FACT s on r.request_id = s.request_id inner join 
TYPE_COVER_DIM tc on s.Type_cover_id = tc.type_cover_id 
group by tc.description,t.weekofyear, t.weekstartdate
order by t.weekofyear;








