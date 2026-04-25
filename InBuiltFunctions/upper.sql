select concat(upper(last_name), ', ', upper(first_name)) as full_name
FROM (
    VALUES 
        ('Smith', 'John'),
        ('Doe', 'Jane'),
        ('Brown', 'Charlie')
) AS t(last_name, first_name)
ORDER BY 
    full_name;

select upper('hello world!') as upper_greeting;