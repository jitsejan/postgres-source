CREATE SCHEMA jitsejan;
CREATE TABLE jitsejan.users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);
COPY jitsejan.users(name, email)
FROM '/data/users.csv' DELIMITER ','  CSV HEADER;