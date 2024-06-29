-- 1.What are the top - paying jobs for my role ? 2.What are the skills required for these top - paying roles ? 3.What are the most in - demand skills for my role ? 4.What are the top skills based on salary for my role ? 5.What are the most optimal skills to learn ? a.Optimal: High Demand -- AND High Paying
select skills,
    round(avg(salary_year_avg)) as avg_salary
from job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Machine Learning Engineer'
    and salary_year_avg is NOT NULL
    and job_work_from_home = true
group by skills
order by avg_salary desc
limit 25;
[
  {
    "skills": "chef",
    "avg_salary": "325000"
  },
  {
    "skills": "ansible",
    "avg_salary": "325000"
  },
  {
    "skills": "golang",
    "avg_salary": "300000"
  },
  {
    "skills": "excel",
    "avg_salary": "283333"
  },
  {
    "skills": "scala",
    "avg_salary": "252500"
  },
  {
    "skills": "mongodb",
    "avg_salary": "235500"
  },
  {
    "skills": "docker",
    "avg_salary": "194331"
  },
  {
    "skills": "c#",
    "avg_salary": "180000"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "174102"
  },
  {
    "skills": "airflow",
    "avg_salary": "174064"
  },
  {
    "skills": "java",
    "avg_salary": "171429"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "170000"
  },
  {
    "skills": "github",
    "avg_salary": "170000"
  },
  {
    "skills": "aws",
    "avg_salary": "168402"
  },
  {
    "skills": "spark",
    "avg_salary": "168386"
  },
  {
    "skills": "hadoop",
    "avg_salary": "167659"
  },
  {
    "skills": "c",
    "avg_salary": "165318"
  },
  {
    "skills": "gitlab",
    "avg_salary": "165318"
  },
  {
    "skills": "flask",
    "avg_salary": "165318"
  },
  {
    "skills": "bigquery",
    "avg_salary": "165000"
  },
  {
    "skills": "gcp",
    "avg_salary": "163974"
  },
  {
    "skills": "terraform",
    "avg_salary": "161875"
  },
  {
    "skills": "typescript",
    "avg_salary": "160000"
  },
  {
    "skills": "sql",
    "avg_salary": "152983"
  },
  {
    "skills": "python",
    "avg_salary": "150570"
  }
]