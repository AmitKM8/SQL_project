/*

What skills are required for the top-paying Data Analyst jobs?
    1.Use the 10 highest-paying Data Analyst positions identified in the first query.
    2.Identify and extract the specific technical, analytical, and soft skills required for each position.
    3.Compare the required skills across the 10 roles to identify common and high-value skills.

Objective: 
Determine which skills are most frequently required for high-paying Data Analyst positions, helping job seekers prioritize skills that align 

*/

with higher-paying career opportunities.with top_paying_jobs AS(
    SELECT
    job_id,
    job_title,
    salary_year_avg,
    name as company_name
    FROM job_postings_fact
    left JOIN company_dim on job_postings_fact.company_id=company_dim.company_id  
    where 
    job_title_short='Data Analyst' AND
    job_location='Anywhere' AND
    salary_year_avg is not NULL
    ORDER BY salary_year_avg DESC
    limit 10
)
Select 
top_paying_jobs.*,skills
From top_paying_jobs
INNER JOIN skills_job_dim on top_paying_jobs.job_id=skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id=skills_dim.skill_id
ORDER BY salary_year_avg desc
limit 14

/*
Key Findings
1.SQL was the most in-demand skill, appearing in 8 job postings.
2.Python ranked second, appearing in 7 job postings.
3.Tableau was also highly demanded, appearing in 6 job postings.
3.R, Snowflake, Pandas, and Excel showed varying levels of demand across Data Analyst job postings.
4.Overall, the results indicate strong employer demand for SQL, Python, and data visualization skills in 2023.
*/