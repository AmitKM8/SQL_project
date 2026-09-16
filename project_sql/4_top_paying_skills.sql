/*

What are the highest-paying skills for Data Analysts?
    1.Analyze the average salary associated with each skill across Data Analyst positions.
    2.Focus only on job postings with specified salary information, regardless of location.
    3.Identify and rank the skills based on the average salary of the roles requiring those skills.
    
Objective: 
Identify which skills are associated with higher average salaries for Data Analysts, helping job seekers understand which skills may offer greater earning potential and should be prioritized for career development.

*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True 
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;

/*
Key Findings
1.Big Data & Machine Learning Skills: Higher-paying Data Analyst roles show strong demand for skills such as PySpark, Couchbase, DataRobot, Jupyter, Pandas, and NumPy, highlighting the value of advanced data processing and analytical capabilities.
2.Software Development & Deployment Skills: Tools such as GitLab, Kubernetes, and Airflow appear in higher-paying roles, indicating the growing overlap between data analytics, software development, and data engineering.
3.Cloud & Data Engineering Skills: Technologies including Elasticsearch, Databricks, and Google Cloud Platform (GCP) are associated with higher-paying positions, reflecting the increasing use of cloud-based analytics environments.
4.Technical Skill Combination: The results suggest that combining data analysis with programming, machine learning, cloud computing, and data engineering can be valuable for accessing higher-paying Data Analyst opportunities.
*/