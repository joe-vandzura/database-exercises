use ymir_employees;

select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M' order by last_name, first_name;

select * from employees where last_name like 'E%';

select * from employees where last_name like '%q%';

select concat(first_name, ' ', last_name) from employees where (last_name like 'E%') or (last_name like '%e') order by emp_no desc;

select concat(first_name, ' ', last_name) from employees where (last_name like 'E%') and (last_name like '%e') order by emp_no desc;

select * from employees where (last_name like '%q%') and (not last_name like '%qu%');

select * from employees where month(birth_date) = 12 and day(birth_date) = 25;

select concat(datediff(now(), hire_date), ' days') from employees where (month(birth_date) = 12 and day(birth_date) = 25) and year(hire_date) between 1990 and 1999 order by hire_date desc;