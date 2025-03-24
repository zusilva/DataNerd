
SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) AS average_salary

    
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg Is NOT NULL
    
GROUP BY
    skills

ORDER BY 
    average_salary DESC

LIMIT 25

/* 

And provide explanations for it?
ChatGPT said:
Here’s an explanation for the top-paying skills in the dataset:

SVN (Subversion) – $400,000: SVN is a version control system used for managing source code. The high average salary for SVN could be due to its application in large, enterprise-level systems where managing and controlling large-scale software projects is critical. Professionals skilled in maintaining and optimizing SVN systems are often highly valued for their expertise in version control, especially in industries with complex codebases and compliance requirements.

Solidity – $179,000: Solidity is a programming language used for developing smart contracts on the Ethereum blockchain. As blockchain technology and decentralized applications (dApps) continue to grow in popularity, the demand for Solidity developers has risen significantly. The high salary reflects the scarcity of experienced blockchain developers and the value of smart contract security and functionality in the rapidly expanding blockchain ecosystem.

Couchbase – $160,515: Couchbase is a NoSQL database used for handling large-scale data storage with high performance and scalability. It is often employed in big data, IoT, and real-time applications. The strong demand for engineers and administrators skilled in Couchbase reflects its critical role in managing complex data structures and its use in highly scalable applications. Companies looking to store and process vast amounts of data are willing to pay top dollar for these specialized skills.

Datarobot – $155,486: Datarobot is an automated machine learning (AutoML) platform that helps businesses develop and deploy machine learning models quickly. As AI and machine learning continue to transform industries, there is a growing need for professionals who can leverage platforms like Datarobot to streamline data science workflows. The high salary reflects the advanced expertise required to work with these tools and the growing reliance on AI-driven insights in business decision-making.

Golang – $155,000: Golang (or Go) is a programming language developed by Google, known for its simplicity and efficiency, particularly in cloud computing and server-side applications. Golang’s speed and ability to handle high concurrency make it highly desirable for building scalable systems, microservices, and cloud-native applications. Its demand continues to grow, especially in tech-heavy companies dealing with large-scale systems, contributing to higher salaries for experienced Golang developers.

In summary, these skills are tied to high-demand, specialized fields such as blockchain development, data management, machine learning, and scalable systems design. The salaries reflect both the expertise needed and the market's need for professionals who can address complex technological challenges.

*/