-- setting connection limit and timeout
ALTER ROLE my_user CONNECTION LIMIT 30;
ALTER ROLE my_user
SET statement_timeout = '100s';
