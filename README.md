# WYCF SQL Training Environment

A PostgreSQL-based SQL training environment created for the WYCF( Winners Corpers Fellowship, Kano) Skill Acquisition Program to support beginner learners practicing SQL remotely using controlled database access.

---

##  Project Overview

This project was created as part of a volunteer SQL training initiative designed to provide students with a hands-on SQL learning environment using PostgreSQL. Students connect remotely to a centralized database server through Tailscale and practice SQL queries using shared datasets.

The setup supports both desktop and mobile users through pgAdmin 4 and PG Orbit.

---

##  Objectives

- Teach beginner SQL and data analysis concepts
- Simulate a real client-server database workflow
- Provide secure multi-user database access
- Support remote learning for mobile and desktop users
- Introduce students to practical SQL querying

---

##  Technologies Used

- PostgreSQL
- pgAdmin 4
- PG Orbit
- Tailscale
- Tailscale
- Sqliteonline

---

##  Database Access Configuration

The environment uses role-based access control to manage student access.

Implemented:
- Restricted user roles
- Controlled table permissions
- Connection limits
- Read-only access for students

Example:

```sql
CREATE ROLE my_user WITH LOGIN PASSWORD 'your_password';

GRANT data_analyst TO my_user;

GRANT SELECT ON ALL TABLES IN SCHEMA public TO data_analyst;
```
---

## Dataset

The training environment includes an Employees dataset used for:

- SELECT statements
- Filtering
- Aggregations
- GROUP BY analysis
- Data exploration

---

## Remote Learning Architecture

<img width="2752" height="1536" alt="remote_architecture" src="https://github.com/user-attachments/assets/8cd95ebc-cc88-42ba-81a7-e5c194b83cb8" />

---

## Topics Covered

- Basic Data Analysis
- Relational Database Concepts
- SQL Fundamentals
- Filtering & Sorting
- Aggregation Functions
- GROUP BY
- Data Cleaning

---

## Screenshots

### Database Role creation
![Role Setup](screenshots/setting_user_role_and_connection_limit.jpg)

### Table creation
![employees table](screenshots/employee_sample_data.jpg)
- Student database connection
- SQL query execution

---

## Lessons Learned

Through this project, I gained practical experience in:
- PostgreSQL user management
- Role-based access control
- Multi-user database environments
- Remote database connectivity
- Structuring datasets for SQL education
- Supporting beginner learners with real database systems.

---

## Setup Instructions

1. Install PostgreSQL
2. Run the SQL files inside the setup folder
3. Execute the dataset creation scripts
4. Connect using pgAdmin 4 or PG Orbit

---

## Project Timeline

Started: 10 May 2026

Status: Active

---

## Author

### Isaac Uko Inyang

Associate Data Engineer with proficiency in SQL, data cleaning, and database systems.

- LinkedIn: https://www.linkedin.com/in/isaacukoinyang
- GitHub: https://github.com/Isaac-Inyang
