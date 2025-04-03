SELECT  
count(job_id) as number_of_jobs,
    
    case
        when job_location = 'Anywhere' Then 'Remote'
        when job_location = 'Seattle, WA' then 'Local'
        else 'Onsite'
    
    end as location_category

from job_postings_fact

where 
    job_title_short = 'Data Analyst'
group by 
    location_category;