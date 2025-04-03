/*
find the count of the number of remote jobs per skill
displau the top 5 skills bybtheir demand in remote jobs
include skill is, name, and countod postins requiring the skill
*/





with remote_job_skills as ( -- CTE
            SELECT

                skill_id,
                count (*) as skill_count
            FROM
                skills_job_dim AS skills_to_job
            INNER JOIN job_postings_fact AS job_postings
                ON job_postings.job_id = skills_to_job.job_id

            where 
                job_postings.job_work_from_home = true and job_postings.job_title_short = 'Data Analyst'
            group by 
                skill_id

)

SELECT 
    skills.skill_id,
    skills as skill_name,
     skill_count

FROM remote_job_skills

INNER JOIN skills_dim as skills on skills.skill_id = remote_job_skills.skill_id

order by 
       skill_count DESC
LIMIT 5;