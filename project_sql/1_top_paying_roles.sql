/*Questions to Answer

1. What are the top-paying jobs for my role?
2. What are the skills required for these top-paying roles?
3. What are the most in-demand skills for my role?
4. What are the top skills based on salary for my role?
5. What are the most optimal skills to learn?
   - Optimal = High Demand AND High Paying */



--Question: What are the top-paying data analyst jobs?
--Identify the top 10 highest-paying Data Analyst roles that are available remotely.
--Focus on job postings with specified salaries (remove nulls).

--Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employer compensation packages.


SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    name as company_name
FROM
    job_postings_fact

left join company_dim on job_postings_fact.company_id = company_dim.company_id

WHERE
    job_title_short = 'Data Analyst'
    AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
order by 
    salary_year_avg desc
limit 10;

