CREATE ROLE ravi LOGIN PASSWORD 'geeks12345';

ALTER ROLE ravi RENAME TO "ravi_kumar";
ALTER ROLE "ravi_kumar" WITH SUPERUSER;
ALTER ROLE "ravi_kumar" WITH CREATEDB;



-- Functions Available with ALTER ROLE Statement

-- The ALTER ROLE statement includes several options to manage role attributes:

-- SUPERUSER | NOSUPERUSER: Determines if the role is a superuser.
-- VALID UNTIL 'timestamp': Specifies the expiry date and time of a role’s password.
-- CREATEDB | NOCREATEDB: Grants or revokes permissions for creating new databases.
-- REPLICATION | NOREPLICATION: Indicates if a role is a replication role.
-- CREATEROLE | NOCREATEROLE: Grants or revokes permissions for creating or modifying roles.
-- PASSWORD 'password' | PASSWORD NULL: Changes the role’s password.
-- INHERIT | NOINHERIT: Determines if the role inherits privileges from parent roles.
-- BYPASSRLS | NOBYPASSRLS: Checks if a role can bypass row-level security (RLS) policies.
-- LOGIN | NOLOGIN: Allows or disallows the role to log in.
-- CONNECTION LIMIT limit: Sets the number of concurrent connections a role can make (-1 means unlimited connections).