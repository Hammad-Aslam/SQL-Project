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