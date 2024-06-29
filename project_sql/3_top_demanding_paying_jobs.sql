-- 1. What are the top-paying jobs for my role?
-- 2. What are the skills required for these top-paying roles?
-- 3. What are the most in-demand skills for my role?
-- 4. What are the top skills based on salary for my role?
-- 5. What are the most optimal skills to learn?
--    a. Optimal: High Demand AND High Paying
select skills,
    count(skills_job_dim.job_id) as demand_count
from job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Machine Learning Engineer'
    and job_work_from_home = true
group by skills
order by demand_count desc
limit 5;
Result: [
  {
    "skills": "python",
    "demand_count": "1230"
  },
  {
    "skills": "pytorch",
    "demand_count": "571"
  },
  {
    "skills": "tensorflow",
    "demand_count": "553"
  },
  {
    "skills": "aws",
    "demand_count": "548"
  },
  {
    "skills": "sql",
    "demand_count": "398"
  }
]