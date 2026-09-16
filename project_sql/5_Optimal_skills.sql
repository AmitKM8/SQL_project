
/*
What are the most optimal skills to learn?
    1.Identify the Data Analyst skills currently in high demand and associated with higher average salaries.
    2.Focus specifically on remote Data Analyst positions that disclose salary ranges.
    3.Prioritize skills based on their potential to provide strong job security, career growth, and higher earning potential.

Objective:
Identify skills that combine strong market demand with higher earning potential, providing insights into which skills Data Analysts should prioritize for career development.

*/

SELECT 
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True 
GROUP BY
    skills_dim.skill_id
HAVING
    COUNT(skills_job_dim.job_id) > 10
ORDER BY
    avg_salary DESC,
    demand_count DESC
LIMIT 25;

/*
Key Findings
1.Big Data & Machine Learning Skills: Higher-paying Data Analyst roles show strong demand for skills such as PySpark, Couchbase, DataRobot, Jupyter, Pandas, and NumPy, highlighting the value of advanced data processing and analytical capabilities.
2.Software Development & Deployment Skills: Tools such as GitLab, Kubernetes, and Airflow appear in higher-paying roles, indicating the growing overlap between data analytics, software development, and data engineering.
3.Cloud & Data Engineering Skills: Technologies including Elasticsearch, Databricks, and Google Cloud Platform (GCP) are associated with higher-paying positions, reflecting the increasing use of cloud-based analytics environments.
4.Technical Skill Combination: The results suggest that combining data analysis with programming, machine learning, cloud computing, and data engineering can be valuable for accessing higher-paying Data Analyst opportunities.
*/