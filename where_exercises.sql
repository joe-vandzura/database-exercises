use ymir_employees;

select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M';

select * from employees where last_name like 'E%';

select * from employees where last_name like '%q%';

select * from employees where (last_name like 'E%') or (last_name like '%e');

select * from employees where (last_name like 'E%') and (last_name like '%e');

select * from employees where (last_name like '%q%') and (not last_name like '%qu%');;