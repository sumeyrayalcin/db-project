

select * from EMPLOYEES;

select * from DEPARTMENTS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
                           on e.DEPARTMENT_ID=d.DEPARTMENT_ID;