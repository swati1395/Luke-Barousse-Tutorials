-- gets jobs and companies from jan

SELECT
    job_title_short,
    company_id,
    job_location
FROM january_jobs

UNION

-- gets jobs and companies from feb
SELECT
    job_title_short,
    company_id,
    job_location
FROM february_jobs

UNION

-- gets jobs and companies from march
SELECT
    job_title_short,
    company_id,
    job_location
FROM march_jobs;




-- UNION ALL

-- gets jobs and companies from jan

SELECT
    job_title_short,
    company_id,
    job_location
FROM january_jobs

UNION ALL

-- gets jobs and companies from feb
SELECT
    job_title_short,
    company_id,
    job_location
FROM february_jobs

UNION ALL

-- gets jobs and companies from march
SELECT
    job_title_short,
    company_id,
    job_location
FROM march_jobs;
