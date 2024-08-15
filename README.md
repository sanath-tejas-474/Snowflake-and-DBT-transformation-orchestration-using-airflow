# Snowflake & dbt Data Transformation Orchestration using Airflow

This project demonstrates a complete data pipeline setup where data from Snowflake is transformed, tested, and managed using dbt (data build tool), with orchestration handled by Apache Airflow using Astronomer (Astro). The pipeline follows best practices for data engineering and data analytics, focusing on scalability, reusability, and efficient orchestration.

## Key Components

### Snowflake RBAC Setup
- Configured Role-Based Access Control (RBAC) in Snowflake, involving the creation and management of warehouses, roles, schemas, databases, and users.
- Ensured proper access and security protocols were maintained across different components of the data pipeline.

### dbt Project Configuration
- Set up the `dbt_project.yml` file to define the project structure, including models, seeds, sources, tests, and documentation.
- Configured connections to Snowflake and established models, sources, and other dbt components.

### Staging and Source Models
- Created staging models to clean and prepare raw data before transforming it into more refined, consumable formats.
- Defined source models to represent the tables/views in Snowflake that serve as the source data.

### Fact Tables and Data Marts
- Developed fact tables and data marts to aggregate and organize the data for analytical purposes.
- Applied various transformations to create meaningful insights from the raw data.

### dbt Macros
- Implemented reusable dbt macros to streamline transformations and ensure consistency across models.
- Used Jinja templating within dbt to write efficient, maintainable code.

### Generic and Singular Tests
- Applied dbt's built-in generic tests (e.g., uniqueness, not null) to ensure data integrity and quality.
- Created custom singular tests for specific validation rules pertinent to the project.

### Orchestration using Airflow
- Integrated dbt models and transformations into an Apache Airflow DAG (Directed Acyclic Graph) for scheduling and orchestration.
- Used Astronomer to deploy and manage the Airflow environment, ensuring reliable execution and monitoring of the pipeline.

## How to Use This Project

### Prerequisites
- Access to Snowflake
- A dbt environment
- An Airflow instance (preferably managed through Astronomer)

### Setup
1. Clone the repository.
2. Configure the `profiles.yml` file for dbt to connect to your Snowflake account.
3. Set up the Airflow DAG to execute the dbt models.

### Execution
- Run the Airflow DAG to trigger the entire data pipeline, from loading raw data in Snowflake to transforming it with dbt and verifying data quality with tests.

### Monitoring
- Monitor the pipeline's execution and check logs in Airflow for any errors or issues during the process.

## Repository Structure
- `models/`: Contains all dbt models, including staging, intermediate, and fact models.
- `macros/`: Custom dbt macros used in the project.
- `tests/`: Generic and singular tests for data validation.
- `airflow_dags/`: Airflow DAG file for orchestrating the dbt models.
- `dbt_project.yml`: The dbt project configuration file.
- `README.md`: Documentation and instructions for setting up and running the project.

## dbt Resources
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

*Note: This is a basic example. Additional details and configurations may be required depending on your specific environment.*
