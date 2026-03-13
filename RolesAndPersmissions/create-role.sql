-- Create login roles
CREATE ROLE "hr_manager" LOGIN PASSWORD 'hr_manager_pass';

-- Create superuser roles
CREATE ROLE "admin" SUPERUSER LOGIN PASSWORD 'admin_pass';

-- Create roles that can create databases
CREATE ROLE "db_creator" CREATEDB LOGIN PASSWORD 'db_creator_pass';

--  Create roles with validity period
CREATE ROLE "temp_user" LOGIN PASSWORD 'temp_user_pass' VALID UNTIL '2026-12-31';

-- Create roles with connection limit
CREATE ROLE "limited_user" LOGIN PASSWORD 'limited_user_pass' CONNECTION LIMIT 5;