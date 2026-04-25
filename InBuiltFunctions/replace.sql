select replace('Hello World!', 'World', 'SQL') as replaced_greeting;


CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL
);

INSERT INTO posts(title, url) VALUES
('PostgreSQL Tutorial', 'http://neon.com/postgresql/tutorial'), 
('PL/pgSQL', 'http://neon.com/postgresql/tutorial/postgresql-plpgsql'),
('PostgreSQL Administration', 'http://neon.com/postgresql/tutorial/postgresql-administration');

SELECT 
    title,
    url,
    REPLACE(url, 'http', 'https') AS slug
    from posts;