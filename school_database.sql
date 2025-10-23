create database school_db;
use school_db;

create table students (
student_id int auto_increment primary key,
name varchar(100) not null,
class varchar(10),
section char(1),
gender varchar(10)
);

create table subjects (
subject_id int auto_increment primary key,
subject_name varchar(50) not null
);

create table mark (
mark_id int auto_increment primary key,
student_id int,
subject_id int,
marks int,
foreign key (student_id) references
students (student_id),
foreign key (subject_id) references
subjects (subject_id)
);

insert into students (name, class, section, gender)
values
('Amit Kumar', '10', 'A', 'Male'),
('Sneha Verma', '10', 'A', 'Female'),
('Ravi Singh', '9', 'B', 'Male');

insert into subjects (subject_name) values
('Maths'),
('Science'),
('English');

insert into mark (student_id, subject_id, marks) values
(1, 1, 85),
(1, 2, 90),
(2, 1, 78),
(2, 3, 88),
(3, 2, 80);  








