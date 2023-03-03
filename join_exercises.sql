select d.dept_name as department_name, CONCAT(e.first_name, ' ', e.last_name) as department_manager
from departments as d
    inner join dept_manager as dm
on d.dept_no = dm.dept_no
    inner join employees e
        on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01';

select d.dept_name as department_name, concat(e.first_name, ' ', e.last_name) as department_manager
from departments as d
    inner join dept_manager as dm
on d.dept_no = dm.dept_no
    inner join employees e
on dm.emp_no = e.emp_no
where e.gender = 'F' and dm.to_date = '9999-01-01';

