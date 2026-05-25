# SQL Training Environment Architecture

##  Overview

This project provides a centralized PostgreSQL training environment for students learning SQL and data analysis during the WYCF Skill Acquisition Program.

The environment allows multiple students to remotely connect to a shared PostgreSQL server using controlled credentials and query preloaded analytical datasets.

---

## System Components

| Component | Purpose |
|---|---|
| PostgreSQL | Database management system |
| pgAdmin 4 | Desktop database client |
| Dbeaver | Desktop database client |
| Sqliteonline | Online database client |
| PG Orbit | Mobile database client |
| Tailscale | Secure remote network access |
| Employees Dataset | SQL beginner  practice dataset |
| WWI dataset | Data Cleaning, Table Joins, Data Exploration |

---

## Connection Workflow

1. Students install postgresql, pgadmin4, pgorbit, dbeaver or run sqliteonline.
2. Students connect to the private network using the same  Tailscale account different from the admin.
3. Students log into the PostgreSQL server using assigned credentials.
4. Students access the shared analyts database or create one if connection fails.
5. Queries are executed against the employees table.
6. Results are returned through pgAdmin 4, PG Orbit, sqliteonline or Dbeaver.
7. Students with 32 bit laptops were provided old versions of postgresql provided in the setup.


---

## Access Control

The environment uses PostgreSQL role-based access control to manage student permissions.

Implemented controls include:
- Restricted user roles
- Read-only table access
- Connection limits
- Shared schema access

This prevents accidental modification or deletion of datasets during training sessions.

---

## Database Connection Details

1. Name/Connection name: Analysis.
2. Host name: Tailscale host IP address.
3. Port: 5432
4. Initial/Maintenance Database: analyst
5. Username: my_user
6. Password: ........

---

## Learning Design

The environment was designed to:
- simulate a real client-server database workflow
- support both mobile and desktop learners
- provide practical SQL experience
- introduce students to relational database systems

---

## Future Improvements

Potential future enhancements:
- Additional datasets
- Multi-table relational schemas
- Data cleaning exercises
- SQL assessment environment
- Dashboard integration
