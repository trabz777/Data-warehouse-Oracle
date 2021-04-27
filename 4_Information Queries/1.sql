--The list of Sessions filled by type of cover by month
Select tc.description as "Type of cover", t.yearofdate as "Year", t.monthnumber, t.monthname, count(s.session_id) as "Number of sessions" from SESSIONS_FACT s inner join
TYPE_COVER_DIM tc on s.Type_cover_id = tc.type_cover_id inner join
TIME_DIM t on s.time_id = t.time_id 
group by tc.description, t.yearofdate, t.monthnumber, t.monthname
order by t.yearofdate, t.monthnumber; 
 








