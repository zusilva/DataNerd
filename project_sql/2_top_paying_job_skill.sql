
WITH top_paying_jobs AS (
    SELECT
        name AS company_name,
        job_id,
        job_title,
        salary_year_avg

    FROM
        job_postings_fact

    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id

    WHERE
        (job_title = 'Data Analyst' AND salary_year_avg IS NOT NULL) AND
        job_location = 'Anywhere'

    ORDER BY 
        salary_year_avg DESC
    LIMIT 10
)


SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/*

Top Skills (Based on Frequency of Occurrence):
SQL
Appears in 10 job listings.
SQL is crucial for querying and manipulating databases, and is a core skill for data analysts.

Python
Appears in 10 job listings.
Python is commonly used for data analysis, machine learning, and automation tasks, making it highly sought after.

R
Appears in 8 job listings.
R is a statistical programming language popular in data analysis, particularly for statistical computing and visualization.

Tableau
Appears in 6 job listings.
Tableau is a popular data visualization tool, often required to present data insights in a visually appealing format.

Excel
Appears in 5 job listings.
Excel remains an important skill for data manipulation, analysis, and reporting, especially for those working with smaller datasets.

Looker
Appears in 5 job listings.
Looker is a business intelligence platform used for data exploration and visualization, so familiarity with it is in demand.

Power BI
Appears in 3 job listings.
Power BI is another powerful business intelligence tool used for data analysis and reporting.

Other Notable Skills:
AWS (Amazon Web Services): Appears in 3 job listings.

Cloud computing is becoming essential, and AWS expertise helps with data storage, processing, and analysis.

BigQuery: Appears in 2 job listings.

A cloud-based data warehouse that helps with big data analysis, commonly used in Google Cloud environments.

SAS: Appears in 2 job listings.

A software suite used for advanced analytics, statistical analysis, and predictive modeling.

Scikit-learn: Appears in 1 job listing.

A machine learning library for Python, used for implementing algorithms and predictive modeling.

Kubernetes: Appears in 1 job listing.

Kubernetes is a tool for managing containerized applications and is useful for scaling data analysis processes.

Java, Javascript, C++: Appears in 1 job listing each.

These programming languages are often needed for custom data applications, data infrastructure, or for working with specific data environments.

===================================================================================================================================================

[
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "sql"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "python"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "r"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "sas"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "matlab"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "pandas"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "tableau"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "looker"
  },
  {
    "company_name": "Get It Recruit - Information Technology",
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "sas"
  },
  {
    "company_name": "Plexus Resource Solutions",
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "python"
  },
  {
    "company_name": "Plexus Resource Solutions",
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "mysql"
  },
  {
    "company_name": "Plexus Resource Solutions",
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "skills": "aws"
  },
  {
    "company_name": "Get It Recruit - Healthcare",
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "skills": "sql"
  },
  {
    "company_name": "Get It Recruit - Healthcare",
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "skills": "python"
  },
  {
    "company_name": "Get It Recruit - Healthcare",
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "skills": "r"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "sql"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "python"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "r"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "golang"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "elasticsearch"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "aws"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "bigquery"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "gcp"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "pandas"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "scikit-learn"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "looker"
  },
  {
    "company_name": "Level",
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "kubernetes"
  },
  {
    "company_name": "CyberCoders",
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "python"
  },
  {
    "company_name": "CyberCoders",
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "java"
  },
  {
    "company_name": "CyberCoders",
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "r"
  },
  {
    "company_name": "CyberCoders",
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "javascript"
  },
  {
    "company_name": "CyberCoders",
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "c++"
  },
  {
    "company_name": "CyberCoders",
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "tableau"
  },
  {
    "company_name": "CyberCoders",
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "power bi"
  },
  {
    "company_name": "CyberCoders",
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "skills": "qlik"
  },
  {
    "company_name": "Uber",
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "skills": "sql"
  },
  {
    "company_name": "Uber",
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "skills": "python"
  },
  {
    "company_name": "Uber",
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "skills": "r"
  },
  {
    "company_name": "Uber",
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "skills": "swift"
  },
  {
    "company_name": "Uber",
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "skills": "excel"
  },
  {
    "company_name": "Uber",
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "skills": "tableau"
  },
  {
    "company_name": "Uber",
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "skills": "looker"
  },
  {
    "company_name": "Overmind",
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "skills": "sql"
  },
  {
    "company_name": "Overmind",
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "skills": "python"
  },
  {
    "company_name": "EPIC Brokers",
    "job_id": 1326467,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "skills": "excel"
  },
  {
    "company_name": "InvestM Technology LLC",
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "skills": "sql"
  },
  {
    "company_name": "InvestM Technology LLC",
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "skills": "excel"
  },
  {
    "company_name": "InvestM Technology LLC",
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "skills": "power bi"
  }
]

*/
