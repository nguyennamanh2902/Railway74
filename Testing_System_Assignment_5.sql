
/*câu 1--tạo view có chứa nhân viên thuộc phòng ban sale*/
select * FROM department;
CREATE VIEW view_emp_sale AS 
SELECT * from `account` where department_id=6;
SELECT * FROM  view_emp_sale;
/*câu 2--tạo view có chứa thông tin các account tham gia vào nhiều group nhất*/
select account_id, count(account_id) as num from Group_account group by account_id;
select max(data1.num) 
from 
(select count(account_id) as num from  group_account group by account_id) as data1;
select account_id, count(account_id) as num  
from 
Group_account group by account_id having count(account_id)=
 (select count(account_id) as num from  group_account group by account_id);
 

 
 select a.* from `account` a where a.account_id in
 (select account_id
 from Group_account 
 group by account_id having count(account_id)=( 
 select max(data1.num)
 from (
 select count(account_id) as num 
 from  group_account group by account_id
 ) as data1));

create view VIEW_ACCOUNT_MAX AS 
 select a.* from `account` a where a.account_id in
 (select account_id
 from Group_account 
 group by account_id having count(account_id)=( 
 select max(data1.num)
 from (
 select count(account_id) as num 
 from  group_account group by account_id
 ) as data1));

 select * from VIEW_ACCOUNT_MAX;
 
 /*câu3 --tạo view chứa những câu hỏi có content quá dài và xoá nó*/
   create view view_question_max_content as
    select * from question where length(content)=
    (
        select max(length(content)) from question
	);
delete from question where question_id in (select question_id from view_question_max_content);
SELECT * FROM view_question_max_content;
 
 /*câu4--tạo view chứa các phòng có nhiều nhân viên nhất*/
 
 select * from department;
 select count(department_id) as num;
 select * from `account` a;
 
 create view view_department_max_emp AS 
 select d.* from department d where d.department_id in
 (select department_id
 from `account` 
 group by department_id having count(department_id)=( 
 select max(data1.num)
 from (
 select count(department_id) as num 
 from  `account` group by department_id
 ) as data1));
 SELECT * FROM view_department_max_emp;

/*câu5 tạo view chứa tất cả câu hỏi do họ Nguyễn tạo*/
 
 select * from `account`;
 select * from question;
create view question_by_creator_Nguyen as
select * from question where creator_id in (
select account_id from `account` where fullname like 'Nguyển%'
)
;
select * from question_by_creator_Nguyen;
