-- SELECT
-- count(job_id) as id,
-- avg(salary_hour_avg) as salary_hour,
-- avg(salary_year_avg)as salary_year
-- from job_postings_fact
-- where job_title_short='Data Analyst' and job_posted_date>'2003-06-01'
-- group by job_schedule_type
-- ORDER BY id desc;

create TABLE january as
   select*
   from job_postings_fact
   where extract(month from job_posted_date)=1;

create TABLE feb as
select*
from job_postings_fact
where extract(month from job_posted_date)=2;

create TABLE mar as
select*
from job_postings_fact
where extract(month from job_posted_date)=3;


SELECT job_country,job_title_short,salary_hour_avg
FROM job_postings_fact



SELECT job_country,job_title_short,salary_hour_avg
FROM job_postings_fact
where job_title_short like '%Analyst'