-- setting connection limit and timeout
ALTER ROLE my_user CONNECTION LIMIT 20;
ALTER ROLE my_user
SET statement_timeout = '100s';
