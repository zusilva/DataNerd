SELECT 
    quarter1_job_postings.job_title_short,
    quarter1_job_postings.job_location,
    quarter1_job_postings.job_via,
    quarter1_job_postings.job_posted_date::DATE,
    quarter1_job_postings.salary_year_avg
FROM (
    SELECT job_title_short, job_location, job_via, job_posted_date, salary_year_avg
    FROM january_jobs
    UNION ALL
    SELECT job_title_short, job_location, job_via, job_posted_date, salary_year_avg
    FROM february_jobs
    UNION ALL
    SELECT job_title_short, job_location, job_via, job_posted_date, salary_year_avg
    FROM march_jobs
) AS quarter1_job_postings
WHERE   
    quarter1_job_postings.salary_year_avg > 70000 AND
    quarter1_job_postings.job_title_short = 'Data Analyst'
ORDER BY
    quarter1_job_postings.salary_year_avg DESC;