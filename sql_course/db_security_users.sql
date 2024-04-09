-- CREATE USER john IDENTIFIED BY '1234';

-- SELECT * FROM mysql.user;

-- SET PASSWORD FOR john = '1234';
-- SET PASSWORD = 'current_user_password';

-- 1: web/desktop application
CREATE USER moon_app IDENTIFIED BY '1234';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE 
	ON sql_store.*
	TO moon_app;

-- 2: admin
GRANT ALL
ON *.*
TO john;

SHOW GRANTS;
-- revoke privilige
GRANT CREATE VIEW
ON sql_store.*
TO moon_app;

REVOKE CREATE VIEW
ON sql_store.*
FROM moon_app;
