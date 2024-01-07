CREATE TABLE teacher (
    teacher_id SERIAL PRIMARY KEY,
    teacher_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    phone_number varchar(20),
    department varchar(100) NOT NULL
);


CREATE TABLE groups (
    group_id SERIAL PRIMARY KEY,
    group_name varchar(255) NOT NULL,
    teacher_id INTEGER REFERENCES teacher(teacher_id) NOT NULL
);


INSERT INTO teacher (teacher_name, email, phone_number, department) 
VALUES 
    ('Арман Маханбет', 'arman@gmail.com', '87777777777', 'Математика'),
    ('Дидар Раймкулов', 'didar@gmail.com', '88888888888', 'Физика'),
    ('Жанерке Катебаева', 'zhanerke@gmail.com', '85555554569', 'Информатика');

INSERT INTO groups (group_name, teacher_id) 
VALUES 
    ('Группа МАТ-101', 1),
    ('Группа МАТ-102', 1),
    ('Группа ФИЗ-201', 2),
    ('Группа ФИЗ-202', 2),
    ('Группа ИНФ-301', 3);
