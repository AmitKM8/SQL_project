/*

What are the most in-demand skills for Data Analysts?
    1.Perform an INNER JOIN between job postings and the skills table, similar to Query 2.
    2.Analyze all available Data Analyst job postings to identify the skills most frequently requested by employers.
    3.Identify and rank the top 5 most in-demand skills based on their frequency across job postings.

Objective: 
Identify the five skills most frequently required in the Data Analyst job market, providing job seekers with insights into which skills are most valuable to develop.

*/

SELECT
skills,
Round(avg(salary_year_avg),0) as avg_salary
From job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id=skills_dim.skill_id
WHERE
job_title_short='Data Analyst'  and salary_year_avg is not NULL

Group BY
skills
order by avg_salary desc
limit 25

/*
Key Findings
1.SQL and Excel remain foundational skills, highlighting the importance of data querying, processing, and spreadsheet analysis for Data Analyst roles.
2.Python, Tableau, and Power BI are highly valued technical skills, reflecting the growing importance of programming and data visualization.
3.Data storytelling and visualization skills are increasingly important for communicating insights and supporting business decision-making.
4.Overall, employers are seeking a combination of strong analytical foundations and technical skills rather than relying on a single tool or technology.
*/