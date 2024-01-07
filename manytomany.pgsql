CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    age INT,
    city varchar(100)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name varchar(255) NOT NULL,
    instructor varchar(255),
    start_date varchar(255),
    end_date varchar(255)
);

CREATE TABLE user_courses (
    user_id INT REFERENCES users(user_id),
    course_id INT REFERENCES courses(course_id),
    PRIMARY KEY (user_id, course_id)
);


INSERT INTO users (username, email, age, city) 
VALUES 
    ('Арман Маханбет', 'arman@gmail.com', 22, 'Киев'),
    ('Дидар Раймкулов', 'didar@gmail.com', 26, 'Москва'),
    ('Жанерке Катебаева', 'zhanerke@gmail.com', 32, 'Алматы');


INSERT INTO courses (course_name, instructor, start_date, end_date) 
VALUES 
    ('Физика', 'Арман Маханбет', '2024-01-20', '2024-06-01'),
    ('Литература', 'Дидар Раймкулов', '2024-02-10', '2024-06-20'),
    ('Экономика', 'Жанерке Катебаева', '2024-03-15', '2024-07-30');

INSERT INTO user_courses (user_id, course_id) 
VALUES 
    (2, 1),  
    (3, 1),  
    (1, 3),  
    (2, 3);  
