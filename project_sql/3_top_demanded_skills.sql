/* question: what are the most in demand skills for data analysts?
- join job postings to inner join table similar to query 2
- identify the top 5 in demand skills for data analyst
-focus on all job postings
-why? retrives the top 5 skills with the highest demand in the job market, providing insights into the most valuable skllls for job seekers.
*/


SELECT
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Analyst' and job_work_from_home = true
GROUP BY skills
order by demand_count DESC
LIMIT 5;
