select d.dept_name as 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments as d
    inner join dept_manager as dm
on d.dept_no = dm.dept_no
    inner join employees e
        on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01';


select d.dept_name as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments as d
    inner join dept_manager as dm
on d.dept_no = dm.dept_no
    inner join employees e
on dm.emp_no = e.emp_no
where e.gender = 'F' and dm.to_date = '9999-01-01';


select t.title as 'Title',
       count(*) as 'Total'
from titles t
         join dept_emp de
              ON t.emp_no = de.emp_no
         join departments d
              on d.dept_no = de.dept_no
  where year(t.to_date) = 9999
  and d.dept_no = 'd009'
group by t.title
order by count(*) desc;


select d.dept_name, concat(e.first_name, ' ',e.last_name) as 'Department Manager',
       s.salary as 'Salary'
from departments as d
    inner join dept_manager as dm
      on d.dept_no = dm.dept_no
    inner join salaries as s
       on dm.emp_no = s.emp_no
    inner join employees as e
       on s.emp_no = e.emp_no
where dm.to_date = '9999-01-01' and s.to_date = '9999-01-01';


select concat(e.first_name, ' ', e.last_name) as 'Employee',
       d.dept_name as 'Department',
       concat(e2.first_name, ' ', e2.last_name) as 'Manager'
from employees as e
    inner join dept_emp as de
        on e.emp_no = de.emp_no
    inner join departments as d
        on de.dept_no = d.dept_no
    inner join dept_manager as dm
        on d.dept_no = dm.dept_no
    inner join employees as e2
        on dm.emp_no = e2.emp_no
where de.to_date = '9999-01-01' and dm.to_date = '9999-01-01';