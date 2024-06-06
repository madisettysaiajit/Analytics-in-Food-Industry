use sdb12;
create database imarticus_PGA;
use imarticus_PGA;

#1Create a table named students_info having the following columns
#student_id, student_name, student_course, student_mail_id, phone_no, DOB (date of birth), trainer_id, batch_id . Try to assign necessary primary keys wherever required  and Insert 5 records.


create table students_info(
student_id int primary key,
student_name varchar(20) unique,
student_course varchar(20) not null,
student_mail_id varchar(30) unique,
phone_no int not null,
DOB date,
trainer_id int,
batch_id int
);
insert into students_info values(1,"Vamshi","Java","vamshi@gmail.com",987643215,"2002-07-01",101,11),
                                (2,"Vinay","C","vinay@gmail.com",987634215,"2001-07-01",102,12),
                                (3,"Varun","C++","varun@gmail.com",98743815,"2003-07-01",103,13),
                                (4,"Vishal","Python","vishal@gmail.com",9543215,"2002-08-01",104,14),
                                (5,"Vimal","SQL","vimal@gmail.com",9876505,"2002-07-01",105,15);


#2Create a table Batch_info having columns
#batch_id, batch_name, no_of_students. Insert 5 records

create table batch1_info(
  batch_id int primary key,
  batch_name varchar(20) unique,
  no_of_students int not null);
  
  insert into batch1_info values(11,"PGA31",30),
                           (12,"PGA32",34),
                           (13,"PGA33",36),
                           (14,"PGA34",25),
                           (15,"PGA35",39);
  
  #3
  create table module_info(
  module_id int primary key,
  module_name varchar(20),
  module_duration int);
  
  insert into module_info values(01,"keys",5),
                                  (02,"DATABASES",4),
                                  (03,"DML",5),
                                  (04,"DDL",6),
                                  (05,"DCL",3);
                                  
  #4
create table trainer_info1(
trainer_id int primary key, 
trainer_name varchar(20),
 training_batch varchar(20), 
 trainer_mail_id varchar(20), 
 module_id int);
 
  insert into trainer_info1
				values(101, 'GHANESH', 'PG1', 'ghanesh@mail.com', 01),
					  (102, 'SAILESH', 'PG2', 'sailesh@mail.com', 02),
                      (103, 'RAMESH', 'PG3', 'ramesh@mail.com', 03),
                      (104, 'SURESH', 'PG4', 'suresh@mail.com', 04),
					  (105, 'RAJESH', 'PG5', 'rajesh@mail.com', 05);

 
 #6
 alter table students_info change student_course student_program char(30);
select*from students_info;

#7
alter table students_info add column student_score decimal(5,2);
 select* from students_info;
 
#8
  alter table students_info add student_grade char(20) after student_score;
  
#9

alter table students_info add constraint foreign key (batch_id) references batch1_info(batch_id );
select* from students_info;
desc students_info;
alter table students_info add constraint foreign key (trainer_id) references trainer_info1(trainer_id );


#10
alter table trainer_info1 add constraint foreign key (module_id) references module_info(module_id);

desc students_info;
desc batch1;
desc trainer_info;