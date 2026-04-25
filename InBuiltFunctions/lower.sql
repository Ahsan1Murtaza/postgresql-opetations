select concat(lower(last_name), ', ', lower(first_name)) as full_name
FROM (
    VALUES 
        ('Smith', 'John'),
        ('Doe', 'Jane'),
        ('Brown', 'Charlie')
) AS t(last_name, first_name)
ORDER BY 
    full_name;

select lower('HELLO WORLD!') as lower_greeting;