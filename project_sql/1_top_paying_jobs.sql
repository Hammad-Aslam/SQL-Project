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
Result: [
  {
    "job_id": 482089,
    "job_title": "ML / AI Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "32500.0",
    "job_posted_date": "2023-12-23 12:09:40",
    "company_name": "Datacy"
  },
  {
    "job_id": 1577429,
    "job_title": "Machine Learning Developer",
    "job_location": "Anywhere",
    "job_schedule_type": "Contractor",
    "salary_year_avg": "46500.0",
    "job_posted_date": "2023-03-11 10:33:58",
    "company_name": "Mero AI"
  },
  {
    "job_id": 283232,
    "job_title": "Data Science & Machine Learning Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "50000.0",
    "job_posted_date": "2023-03-09 18:27:42",
    "company_name": "Kodif"
  },
  {
    "job_id": 1568830,
    "job_title": "Python ML Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Contractor",
    "salary_year_avg": "65000.0",
    "job_posted_date": "2023-05-08 19:38:18",
    "company_name": "dataroomHQ"
  },
  {
    "job_id": 1630695,
    "job_title": "Machine Learning Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Contractor",
    "salary_year_avg": "65000.0",
    "job_posted_date": "2023-01-16 12:03:02",
    "company_name": "Linum Labs"
  },
  {
    "job_id": 444570,
    "job_title": "Machine Learning Scientist (Entry Level)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "65000.0",
    "job_posted_date": "2023-07-20 07:05:49",
    "company_name": "Patterned Learning AI"
  },
  {
    "job_id": 1810659,
    "job_title": "Front-End Engineer (Generative AI)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "70000.0",
    "job_posted_date": "2023-11-04 23:03:10",
    "company_name": "Altimate AI"
  },
  {
    "job_id": 599200,
    "job_title": "AI Research Engineer, Skill Learning",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-02-06 10:36:32",
    "company_name": "Neo Cybernetica"
  },
  {
    "job_id": 532113,
    "job_title": "Machine Learning Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-02-09 03:44:47",
    "company_name": "vidIQ"
  },
  {
    "job_id": 235212,
    "job_title": "Sr. Data Scientist/Machine Learning Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-04-28 16:04:53",
    "company_name": "Wisetek Providers, Inc."
  }
]