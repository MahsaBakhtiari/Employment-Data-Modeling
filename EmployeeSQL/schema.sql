create table titles(
title_id varchar(100) primary key, 
title varchar(100) not null
);

create table employees(
emp_no int primary key, 
emp_title_id varchar(100) not null,
birth_date date,  
first_name varchar(100) not null,
last_name varchar(100) not null,
sex varchar(20), 
hire_date date not null,
foreign key (emp_title_id) references titles(title_id)
);

create table salaries(
emp_no int primary key,
salary int not null,
foreign key (emp_no) references employees(emp_no)
);

create table departments(
dept_no varchar(100) primary key,
dept_name varchar(100) not null
);

create table dept_emp(
emp_no int,
dept_no varchar(100),  
primary key (dept_no, emp_no),
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no)
);
 
create table dept_manager(	
dept_no varchar(100),
emp_no int,
primary key (dept_no, emp_no),
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no)
);



