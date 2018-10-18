select works.department_id, count(works.employee_id) from works group by works.department_id having 100<(select sum(pct_time) from works);
