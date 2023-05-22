create database testing_system_assignment_2;
use             testing_system_assignment_2;
create table    department (
   department_id   int auto_increment primary key,
   demartment_name varchar (50) not null
);
create table position (
   position_id     int auto_increment primary key,
   position_name   enum  ('manage','staff','accountant''protect','assistant')
   );
create table account (
   account_id      int auto_increment primary key,
   email           varchar (50) not null,
   username        varchar (50),
   fullname        varchar (50),
   department_id   int not null,
   position_id     varchar (50),
   create_date     date
   );
create table `group` (
   `group_id`      int auto_increment primary key,
   `group_name`    varchar(50) not null,
   creator_id      int unique,
   create_date     date
);
create table `group_account` (
   `group_id`      int auto_increment primary key,
   account_id      int unique not null,
   join_date       date
);
create table type_question (
   type_id         int auto_increment primary key,
   type_name       varchar (300) not null
);
create table category_question (
   category_id     int auto_increment primary key,
   category_name   varchar (100) not null
);
create table question (
   question_id      int auto_increment primary key,
   content         varchar (500) not null,
   category_id     int unique,
   type_id         int,
   creator_id      int unique,
   create_date     date
);
create table answer (
   answer_id       int auto_increment primary key,
   content         varchar (500),
   question_id     int unique,
   iscorrect       enum  ('correct','wrong')
);
create table exam (
   exam_id      int auto_increment primary key,
   code         int,
   title        varchar (300),
   category_id  int,
   duration     varchar (50),
   creator_id   int unique,
   create_date  date
);
create table exam_question (
   exam_id      int auto_increment primary key,
   question_id  int unique
);
INSERT INTO `testing_system_assignment_2`.`answer`
(`answer_id`,
`content`,
`question_id`,
`iscorrect`)
VALUES
('01',
''
);
INSERT INTO `testing_system_assignment_2`.`account`
(`account_id`,
`email`,
`username`,
`fullname`,
`department_id`,
`position_id`,
`create_date`)
VALUES
('006',
'tranthib132@gmail.com',
'thi b',
'tranthib',
'07',
'008',
'2023-05-21'
);
INSERT INTO `testing_system_assignment_2`.`question`
(`question_id`,
`content`,
`category_id`,
`type_id`,
`creator_id`,
`create_date`)
VALUES
('05',
'math',
'05',
'05',
'05',
'2023-05-21'
);
INSERT INTO `testing_system_assignment_2`.`category_question`
(`category_id`,
`category_name`)
VALUES
('05',
'math'
);
INSERT INTO `testing_system_assignment_2`.`department`
(`department_id`,
`demartment_name`)
VALUES
(
'5',
'math'
);
INSERT INTO `testing_system_assignment_2`.`position`
(`position_id`,
`position_name`)
VALUES
(
'5',
'assistant'
);
INSERT INTO `testing_system_assignment_2`.`group`
(`group_id`,
`group_name`,
`creator_id`,
`create_date`)
VALUES
(
'5',
'mat',
'005',
'2023-05-21'
);
INSERT INTO `testing_system_assignment_2`.`group_account`
(`group_id`,
`account_id`,
`join_date`)
VALUES
(
'126',
'050',
'2023-05-21'
);
INSERT INTO `testing_system_assignment_2`.`type_question`
(`type_id`,
`type_name`)
VALUES
(
'5',
'difficult'
);
INSERT INTO `testing_system_assignment_2`.`exam`
(`exam_id`,
`code`,
`title`,
`category_id`,
`duration`,
`creator_id`,
`create_date`)
VALUES
(
'5',
'12798',
'derivative',
'005',
'120minute',
'1628799',
'2023-05-21'
);
INSERT INTO `testing_system_assignment_2`.`exam_question`
(`exam_id`,
`question_id`)
VALUES
(
'5',
'05'
);
INSERT INTO `testing_system_assignment_2`.`answer`
(`answer_id`,
`content`,
`question_id`,
`iscorrect`)
VALUES
(
'05',
'đạo hàm',
'5',
'correct');
