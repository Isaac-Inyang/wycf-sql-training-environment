# WYCF SQL Training Environment

A PostgreSQL-based SQL training environment created for the WYCF Skill Acquisition Program to support beginner learners practicing SQL remotely using controlled database access.

---

##  Project Overview

This project was designed to provide students with a hands-on SQL learning environment using PostgreSQL. Students connect remotely to a centralized database server through Tailscale and practice SQL queries using shared datasets.

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
- SQL

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
