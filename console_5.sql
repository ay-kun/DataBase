create table Student_for_lab4
   (ID varchar(5) unique not null,
    last_name varchar(20),
    first_name varchar(20),
    year_of_birth int,
    current_year int,
    primary key (last_name, first_name),
    age int generated always as (current_year - year_of_birth) stored
);

create table phones_student
    (ID varchar(5),
    phone varchar not null,
    student_id varchar not null references Student_for_lab4,
    primary key (ID)
    );