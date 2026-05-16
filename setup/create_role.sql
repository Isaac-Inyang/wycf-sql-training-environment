-- =========================================
-- File: create_roles.sql
-- Purpose: Configure student database roles
-- Project: WYCF SQL Training Environment
-- =========================================

-- creating student role my_user
CREATE ROLE my_user WITH LOGIN PASSWORD 'BITI2026';

-- creating data_analyst role and connecting to database
CREATE ROLE data_analyst;
GRANT CONNECT ON DATABASE analyst TO data_analyst;

-- granting read_only access to data_analyst
GRANT USAGE ON SCHEMA public TO data_analyst;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO data_analyst;

-- making new tables accessible to data_analyst
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT ON TABLES TO data_analyst;

-- assigning data_analyst to my_user
GRANT data_analyst TO my_user;

