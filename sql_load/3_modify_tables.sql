

copy company_dim 
FROM '/Users/amitkmukesh/Downloads/skills/sql_queries/csv_files/company_dim.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');


COPY skills_dim
FROM '/Users/amitkmukesh/Downloads/skills/sql_queries/csv_files/skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM '/Users/amitkmukesh/Downloads/skills/sql_queries/csv_files/job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM '/Users/amitkmukesh/Downloads/skills/sql_queries/csv_files/skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
