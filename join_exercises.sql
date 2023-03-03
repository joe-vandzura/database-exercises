SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM departments as d
    inner join dept_manager as dm
on d.dept_no = dm.dept_no
    inner join employees e
        on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01';

