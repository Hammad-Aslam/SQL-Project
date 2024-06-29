-- Question: What skills are required for the top-paying machine learning jobs?
--     Use the top 10 highest-paying Data Analyst jobs from first query
--     Add the specific skills required for these roles
--     Why? It provides a detailed look at which high-paying jobs demand certain skills, helping job seekers understand which skills to develop that align with top salaries.
with top_paying_jobs as (
    SELECT job_id,
        job_title,
        job_location,
        salary_year_avg,
        name as company_name
    from job_postings_fact
        left join company_dim on job_postings_fact.company_id = company_dim.company_id
    where job_title_short = 'Machine Learning Engineer'
        and job_location = 'Anywhere'
        and salary_year_avg is not null
    ORDER BY salary_year_avg
)
SELECT top_paying_jobs.*,
    skills
from top_paying_jobs
    INNER JOIN skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
order BY salary_year_avg desc
limit 10 Result: [
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "kubernetes"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "docker"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "airflow"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "java"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "spark"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "gcp"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "python"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "aws"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "sql"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "job_location": "Anywhere",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "python"
  }
]