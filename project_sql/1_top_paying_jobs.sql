-- 1.What are the top - paying jobs for my role ? 
-- 2.What are the skills required for these top - paying roles ?
-- 3.What are the most in - demand skills for my role ? 
-- 4.What are the top skills based on salary for my role ? 
-- 5.What are the most optimal skills to learn ? 
--     a.Optimal: High Demand AND High Paying
SELECT job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
from job_postings_fact
    left join company_dim on job_postings_fact.company_id = company_dim.company_id
where job_title_short = 'Machine Learning Engineer'
    and job_location = 'Anywhere'
    and salary_year_avg is not null
ORDER BY salary_year_avg
limit 10;