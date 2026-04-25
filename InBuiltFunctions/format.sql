-- Specifier	Description
-- %s	Replaces with a string.
-- %I	Replaces with an identifier (table or column name).
-- %L	Replaces with a literal (safely quoted).
-- %t	Replaces with a Boolean.
-- %D	Replaces with a numeric, double-precision number.

SELECT format('Hello, %s!', 'Alice') as greeting;


SELECT 
    FORMAT('%s, %s', last_name, first_name) AS full_name 
FROM (
    VALUES 
        ('Smith', 'John'),
        ('Doe', 'Jane'),
        ('Brown', 'Charlie')
) AS t(last_name, first_name)
ORDER BY 
    full_name;