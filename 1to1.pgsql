CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,
    population INT NOT NULL,
    area_km2 INT NOT NULL
);

CREATE TABLE capitals (
    capital_id SERIAL PRIMARY KEY,
    capital_name VARCHAR(255) NOT NULL,
    country_id INTEGER UNIQUE REFERENCES countries(country_id)
);

INSERT INTO countries (country_name, population, area_km2) 
VALUES 
    ('Россия', 146599183, 17098242),
    ('США', 331002651, 9833517),
    ('Китай', 1444216107, 9596961);

INSERT INTO capitals (capital_name, country_id) 
VALUES 
    ('Москва', 1),
    ('Вашингтон', 2),
    ('Пекин', 3);
