/*

What are the top-paying remote Data Analyst jobs currently available?
    1.Identify the 10 highest-paying remote Data Analyst positions based on job postings with clearly stated salary information.
    2.Exclude job postings with missing, null, or undisclosed salary data.
    3.Rank the positions by the advertised salary range or compensation, using a consistent methodology.

Objective: 
Highlight the highest-paying remote opportunities for Data Analysts, providing insights into potential employers, compensation levels, and location flexibility.

*/

SELECT
job_id,
job_title,
job_location,
job_schedule_type,
salary_year_avg,
job_posted_date,
name as company_name
FROM job_postings_fact
left JOIN company_dim on job_postings_fact.company_id=company_dim.company_id  
where 
job_title_short='Data Analyst' AND
job_location='Anywhere' AND
salary_year_avg is not NULL
ORDER BY salary_year_avg DESC
limit 10

/*
Key Findings
1.Wide Salary Range: The top 10 Data Analyst roles offered salaries ranging from $184,000 to $650,000, demonstrating substantial earning potential.
2.Diverse Employers: High-paying positions were offered by companies such as SmartAsset, Meta, and AT&T, highlighting demand for data professionals across multiple industries.
3.Variety of Job Titles: The roles ranged from Data Analyst to Director of Analytics, showing opportunities across different levels of seniority and specialization.
4.Remote Opportunities: The presence of highly compensated remote positions indicates that location flexibility can coexist with competitive salaries in data analytics.
5.Career Progression: The range of titles suggests potential career paths from analyst-level positions to senior and leadership roles in analytics.
*/