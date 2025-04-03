SELECT *
from 
    (SELECT * -- subquery starts 
    from job_postings_fact
    where extract (month from job_posted_date) = 1
    ) 
    as january_jobs -- subquery ends



    with january_jobs as
    ( -- cte definition begins here
        select *
        from job_postings_fact
    where extract (month from job_posted_date) = 1
    ) -- CTE definiton ends here

 select *
 from january_jobs;


---- using sub queries

select name as company_name 
from company_dim
where company_id in

(
select 
    company_id

from
    job_postings_fact
where 
      job_no_degree_mention = true
order by company_id
)

---- using sub queries






 -- cte
/* find the companies that have the most job opening.
get the total number of job posting per company id (job postings fact)
return the total numner of jobs with the company name (company dim)
*/



with company_job_count as (

select 
    company_id,
    count (*) as total_jobs

from 
    job_postings_fact

group by company_id

)
 select company_dim.name as company_name,
        company_job_count.total_jobs
 from company_dim
left join company_job_count on company_dim.company_id = company_job_count.company_id

order by 
    total_jobs desc